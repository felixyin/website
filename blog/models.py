import logging

from django.conf import settings
from django.contrib.sites.models import Site
from django.core.exceptions import ValidationError
from django.db import models
from django.db.models.signals import post_save
from django.dispatch import receiver
from django.urls import reverse
from django.utils.functional import cached_property
from django.utils.timezone import now
from django.utils.translation import gettext_lazy as _
from uuslug import slugify

from home import baidu
from mdeditor.fields import MDTextField
from website.utils import cache_decorator, cache

logger = logging.getLogger(__name__)


class BaseModel(models.Model):
    slug = models.SlugField(default='no-slug', max_length=160, blank=True)
    created_time = models.DateTimeField('创建时间', default=now)
    last_mod_time = models.DateTimeField('修改时间', default=now)

    def save(self, *args, **kwargs):
        from website.blog_signals import article_save_signal
        if not self.slug or self.slug == 'no-slug' or not self.id:
            slug = self.title if 'title' in self.__dict__ else self.name
            self.slug = slugify(slug)
        super().save(*args, **kwargs)
        # type = self.__class__.__name__
        is_update_views = 'update_fields' in kwargs and len(kwargs['update_fields']) == 1 and kwargs['update_fields'][
            0] == 'views'
        article_save_signal.send(sender=self.__class__, is_update_views=is_update_views, id=self.id)

    def get_full_url(self):
        site = Site.objects.get_current().domain
        url = "http://{site}{path}".format(site=site, path=self.get_absolute_url())
        return url

    class Meta:
        abstract = True


class Article(BaseModel):
    """文章"""
    STATUS_CHOICES = (
        ('d', '草稿'),
        ('p', '发表'),
    )
    COMMENT_STATUS = (
        ('o', '打开'),
        ('c', '关闭'),
    )
    TYPE = (
        ('a', '文章'),
        ('p', '页面'),
    )
    title = models.CharField('标题', max_length=200, unique=True)
    body = MDTextField('正文', null=True)
    pub_time = models.DateTimeField('发布时间', blank=True, null=True, default=now())
    status = models.CharField('文章状态', max_length=1, choices=STATUS_CHOICES, default='p')
    comment_status = models.CharField('评论状态', max_length=1, choices=COMMENT_STATUS, default='o')
    type = models.CharField('类型', max_length=1, choices=TYPE, default='a')
    views = models.PositiveIntegerField('浏览量', default=0)
    author = models.ForeignKey(settings.AUTH_USER_MODEL, verbose_name='作者', on_delete=models.CASCADE)
    article_order = models.IntegerField('排序,数字越大越靠前', blank=False, null=False, default=0)
    category = models.ForeignKey('Category', verbose_name='分类', on_delete=models.CASCADE, blank=False, null=False)
    tags = models.ManyToManyField('Tag', verbose_name='标签集合', blank=True)

    def __str__(self):
        return self.title

    class Meta:
        ordering = ['-article_order', '-pub_time']
        verbose_name = "文章"
        verbose_name_plural = verbose_name
        get_latest_by = 'created_time'

    def get_absolute_url(self):
        return reverse('blog:detailbyid', kwargs={
            'article_id': self.id,
            'year': self.created_time.year,
            'month': self.created_time.month,
            'day': self.created_time.day
        })

    @cache_decorator(60 * 60 * 10)
    def get_category_tree(self):
        tree = self.category.get_category_tree()
        names = list(map(lambda c: (c.name, c.get_absolute_url()), tree))

        return names

    def save(self, *args, **kwargs):
        if not self.slug or self.slug == 'no-slug' or not self.id:
            # Only set the slug when the object is created.
            self.slug = slugify(self.title)

        super().save(*args, **kwargs)

    def viewed(self):
        self.views += 1
        self.save(update_fields=['views'])

    def links_list(self):
        cache_key = 'article_links_{id}'.format(id=self.id)
        value = cache.get(cache_key)
        if value:
            logger.info('get article links:{id}'.format(id=self.id))
            return value
        else:
            links = self.links_set.filter(is_enable=True)
            cache.set(cache_key, links)
            logger.info('set article links:{id}'.format(id=self.id))
            return links

    def files_list(self):
        cache_key = 'article_files_{id}'.format(id=self.id)
        value = cache.get(cache_key)
        if value:
            logger.info('get article files:{id}'.format(id=self.id))
            return value
        else:
            files = self.files_set.filter(is_enable=True)
            cache.set(cache_key, files)
            logger.info('set article files:{id}'.format(id=self.id))
            return files

    def comment_list(self):
        cache_key = 'article_comments_{id}'.format(id=self.id)
        value = cache.get(cache_key)
        if value:
            logger.info('get article comments:{id}'.format(id=self.id))
            return value
        else:
            comments = self.comment_set.filter(is_enable=True)
            cache.set(cache_key, comments)
            logger.info('set article comments:{id}'.format(id=self.id))
            return comments

    def get_admin_url(self):
        info = (self._meta.app_label, self._meta.model_name)
        return reverse('admin:%s_%s_change' % info, args=(self.pk,))

    @cached_property
    def next_article(self):
        # 下一篇
        return Article.objects.filter(id__gt=self.id, status='p').order_by('id').first()

    @cached_property
    def prev_article(self):
        # 前一篇
        return Article.objects.filter(id__lt=self.id, status='p').first()


class Category(BaseModel):
    """文章分类"""
    name = models.CharField('分类名', max_length=30, unique=True)
    parent_category = models.ForeignKey('self', verbose_name="父级分类", blank=True, null=True, on_delete=models.CASCADE)

    class Meta:
        ordering = ['name']
        verbose_name = "分类"
        verbose_name_plural = verbose_name

    def get_absolute_url(self):
        return reverse('blog:category_detail', kwargs={'category_name': self.slug})

    def __str__(self):
        return self.name

    @cache_decorator(60 * 60 * 10)
    def get_category_tree(self):
        """
        递归获得分类目录的父级
        :return: 
        """
        categorys = []

        def parse(category):
            categorys.append(category)
            if category.parent_category:
                parse(category.parent_category)

        parse(self)
        return categorys

    @cache_decorator(60 * 60 * 10)
    def get_sub_categorys(self):
        """
        获得当前分类目录所有子集
        :return: 
        """
        categorys = []
        all_categorys = Category.objects.all()

        def parse(category):
            if category not in categorys:
                categorys.append(category)
            childs = all_categorys.filter(parent_category=category)
            for child in childs:
                if category not in categorys:
                    categorys.append(child)
                parse(child)

        parse(self)
        return categorys


class Tag(BaseModel):
    """文章标签"""
    name = models.CharField('标签名', max_length=30, unique=True)

    def __str__(self):
        return self.name

    def get_absolute_url(self):
        return reverse('blog:tag_detail', kwargs={'tag_name': self.slug})

    @cache_decorator(60 * 60 * 10)
    def get_article_count(self):
        return Article.objects.filter(tags__name=self.name).distinct().count()

    class Meta:
        ordering = ['name']
        verbose_name = "标签"
        verbose_name_plural = verbose_name


class Links(models.Model):
    """友情链接"""
    # TYPE = (
    #     ('g', '全局链接'),
    #     ('p', '文章链接'),
    # )
    name = models.CharField('链接名称', max_length=30, unique=True)
    link = models.URLField('链接地址')
    sequence = models.IntegerField('排序')
    created_time = models.DateTimeField('创建时间', default=now)
    last_mod_time = models.DateTimeField('修改时间', default=now)
    # type = models.CharField('类型', max_length=1, choices=TYPE, default='g')
    is_enable = models.BooleanField('是否启用', default=True)
    article = models.ForeignKey(Article, on_delete=models.DO_NOTHING, null=True, default=None)

    # 
    # def save(self, force_insert=False, force_update=False, using=None,
    #          update_fields=None):
    #     if self.article is None:
    #         self.type = 'g'
    #     else:
    #         self.type = 'p'
    #     return super(Links, self).save(force_insert, force_update, using, update_fields)

    class Meta:
        ordering = ['sequence']
        verbose_name = '友情链接'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name


class SideBar(models.Model):
    """侧边栏,可以展示一些html内容"""
    name = models.CharField('标题', max_length=100)
    content = MDTextField("内容")
    sequence = models.IntegerField('排序', unique=True)
    is_enable = models.BooleanField('是否启用', default=True)
    created_time = models.DateTimeField('创建时间', default=now)
    last_mod_time = models.DateTimeField('修改时间', default=now)

    class Meta:
        ordering = ['sequence']
        verbose_name = '侧边栏'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name


class BlogSettings(models.Model):
    '''站点设置 '''
    sitename = models.CharField("网站名称", max_length=200, null=False, blank=False, default='')
    site_description = models.TextField("网站描述", max_length=1000, null=False, blank=False, default='')
    site_seo_description = models.TextField("网站SEO描述", max_length=1000, null=False, blank=False, default='')
    site_keywords = models.TextField("网站关键字", max_length=1000, null=False, blank=False, default='')
    article_sub_length = models.IntegerField("文章摘要长度", default=300)
    sidebar_article_count = models.IntegerField("侧边栏文章数目", default=10)
    sidebar_comment_count = models.IntegerField("侧边栏评论数目", default=5)
    show_google_adsense = models.BooleanField('是否显示谷歌广告', default=False)
    google_adsense_codes = models.TextField('广告内容', max_length=2000, null=True, blank=True, default='')
    open_site_comment = models.BooleanField('是否打开网站评论功能', default=True)
    beiancode = models.CharField('备案号', max_length=2000, null=True, blank=True, default='')
    show_gongan_code = models.BooleanField('是否显示公安备案号', default=False, null=False)
    gongan_beiancode = models.TextField('公安备案号', max_length=2000, null=True, blank=True, default='')
    resource_path = models.CharField("静态文件保存地址", max_length=300, null=False, default='/var/www/resource/')

    class Meta:
        verbose_name = '网站配置'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.sitename

    def clean(self):
        if BlogSettings.objects.exclude(id=self.id).count():
            raise ValidationError(_('只能有一个配置'))

    def save(self, *args, **kwargs):
        super().save(*args, **kwargs)
        from website.utils import cache
        cache.clear()


class Files(models.Model):
    '''
        文章、博客的附件：图片、pdf、word、excel、html、zip等
    '''
    file = models.FileField(upload_to="upload/blog/article/%Y/%m/%d", verbose_name='附件')
    name = models.CharField(max_length=50, null=True, verbose_name='附件名称', default=file.name)
    sequence = models.IntegerField('排序', unique=True, null=True)
    created_time = models.DateTimeField('创建时间', default=now)
    last_mod_time = models.DateTimeField('修改时间', default=now)
    is_enable = models.BooleanField('是否启用', default=True)
    article = models.ForeignKey(Article, on_delete=models.CASCADE)

    class Meta:
        verbose_name = '博客附件'
        verbose_name_plural = verbose_name


@receiver([post_save], sender=Article)
@receiver([post_save], sender=Category)
@receiver([post_save], sender=Tag)
def save_handler(sender, instance, created, **kwargs):
    url = instance.get_full_url()
    bd_type = baidu.EnumBaiDu.create if created else baidu.EnumBaiDu.update
    baidu.push_url2baidu(url, bd_type)


@receiver([post_save], sender=Article)
@receiver([post_save], sender=Category)
@receiver([post_save], sender=Tag)
def delete_handler(sender, instance, **kwargs):
    url = instance.get_full_url()
    baidu.push_url2baidu(url, baidu.EnumBaiDu.delete)
