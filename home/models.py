from ckeditor_uploader.fields import RichTextUploadingField
from django.db import models as m
from django.urls import reverse
from django.utils.functional import cached_property
from django.utils.timezone import now

from blog.models import BaseModel
from mdeditor.fields import MDTextField
from website.utils import cache_decorator


# Create your models here.


#
class HomeBaseModel(m.Model):
    created_time = m.DateTimeField('创建时间', default=now, editable=False)
    last_mod_time = m.DateTimeField('修改时间', default=now, editable=False)
    is_enable = m.BooleanField('是否启用', default=True)
    sequence = m.IntegerField('排列顺序', unique=True, null=True, blank=True)

    class Meta:
        abstract = True


# 主页
class Home(m.Model):
    slogan = RichTextUploadingField(max_length=100, verbose_name='口号')
    carousel_delay = m.IntegerField(verbose_name='跑马灯大图切换时间')
    testimonials_delay = m.IntegerField(verbose_name='客户评价切换时间')

    def __str__(self):
        return '主页'

    class Meta:
        verbose_name = '主页'
        verbose_name_plural = verbose_name


# 主页-跑马灯大图
class HomeCarousel(HomeBaseModel):
    title = m.CharField(max_length=50, verbose_name='标题', blank=False)
    description = RichTextUploadingField(max_length=300, config_name='mini', verbose_name='描述', blank=False)
    image = m.ImageField(upload_to='upload/home/carousel/image', verbose_name='图片', blank=False)
    video = m.FileField(upload_to='upload/home/carousel/video', verbose_name='视频', blank=True)
    home = m.ForeignKey(Home, on_delete=m.CASCADE, verbose_name='主页')

    class Meta:
        verbose_name = '主页跑马灯'
        verbose_name_plural = verbose_name


# 主页-我们的优势
class HomeSuperiority(HomeBaseModel):
    title = m.CharField(max_length=50, verbose_name='标题', blank=False)
    description = RichTextUploadingField(max_length=300, blank=False, config_name='mini', verbose_name='描述')
    home = m.ForeignKey(Home, on_delete=m.CASCADE, verbose_name='主页')

    class Meta:
        verbose_name = '主页我们的优势'
        verbose_name_plural = verbose_name


# 服务
class Service(HomeBaseModel):
    name = m.CharField(max_length=50, verbose_name='服务名称')
    description = m.CharField(max_length=200, verbose_name='服务简介')
    thumb = m.ImageField(verbose_name='缩略图')
    slogan = m.CharField(max_length=100, verbose_name='服务口号')
    content = MDTextField(max_length=1000, null=True, verbose_name='服务详情')

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = '服务'
        verbose_name_plural = verbose_name


# 服务-内容
class ServiceItem(HomeBaseModel):
    name = m.CharField(max_length=50, verbose_name='服务内容')
    description = RichTextUploadingField(max_length=200, config_name='mini', verbose_name='服务简介')
    service = m.ForeignKey(Service, on_delete=m.CASCADE, null=True, verbose_name='服务')

    class Meta:
        verbose_name = '服务内容'
        verbose_name_plural = verbose_name


# 服务-流程和特点
class ServerProcess(HomeBaseModel):
    name = m.CharField(max_length=50, verbose_name='服务流程')
    description = RichTextUploadingField(max_length=200, config_name='mini', verbose_name='服务流程简介')
    service = m.ForeignKey(Service, on_delete=m.CASCADE, null=True, verbose_name='服务')

    class Meta:
        verbose_name = '服务流程和特点'
        verbose_name_plural = verbose_name


# 项目
class Project(HomeBaseModel):
    name = m.CharField(max_length=50, verbose_name='项目名称')
    description = RichTextUploadingField(max_length=200, config_name='mini', verbose_name='项目简介')
    thumb = m.ImageField(upload_to="upload/project/thumb/%Y/%m/%d", verbose_name='缩略图')
    content = MDTextField(max_length=10000, verbose_name='项目详情')
    source_url = m.URLField(verbose_name='源码地址', null=True, blank=True)
    cycle = RichTextUploadingField(config_name='mini', verbose_name='项目周期', null=True, blank=True)

    service = m.ForeignKey(Service, on_delete=m.DO_NOTHING, null=True, blank=True, verbose_name='服务')
    tags = m.ManyToManyField('ProjectTag', verbose_name='技术标签')

    sequence = m.IntegerField('排列顺序', unique=True, null=False, blank=False)
    begin_time = m.DateTimeField('开始时间', default=now, editable=True)
    end_time = m.DateTimeField('结束时间', default=now, editable=True)

    related_projects = m.ManyToManyField('self', verbose_name="类似项目", blank=True, null=True)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = '项目'
        verbose_name_plural = verbose_name

    def get_absolute_url(self):
        return reverse('home:project-detail', kwargs={'pk': self.id})

    @cached_property
    def next_project(self):
        # 下一篇
        return Project.objects.filter(sequence__gt=self.sequence, is_enable=True).order_by('sequence').first()

    @cached_property
    def prev_project(self):
        # 前一篇
        return Project.objects.filter(sequence__lt=self.sequence, is_enable=True).order_by('-sequence').first()

    @cache_decorator(60 * 60 * 10)
    def get_related_projects(self):
        return Project.objects.all().filter(related_projects=self)


# 项目-技术标签
class ProjectTag(HomeBaseModel):
    name = m.CharField(max_length=50, verbose_name='技术标签名称')
    description = RichTextUploadingField(max_length=200, config_name='mini', blank=True, verbose_name='特点简介')

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = '项目技术标签'
        verbose_name_plural = verbose_name


# 项目-附件
class ProjectAttach(HomeBaseModel):
    file = m.FileField(upload_to="upload/project/thumb/%Y/%m/%d", null=True, verbose_name='附件')
    name = m.CharField(max_length=50, null=True, verbose_name='附件名称', default=file.name)
    project = m.ForeignKey(Project, on_delete=m.CASCADE, null=True, verbose_name='项目')

    class Meta:
        verbose_name = '项目附件'
        verbose_name_plural = verbose_name


# 关于
class About(m.Model):
    introduce = RichTextUploadingField(max_length=800, config_name='full', verbose_name='介绍')
    address = m.CharField(max_length=100, verbose_name='地址')
    phone = m.CharField(max_length=20, verbose_name='电话')
    email = m.EmailField(verbose_name='邮箱')
    qq = m.CharField(max_length=20, verbose_name='QQ号')
    wechat = m.CharField(max_length=20, verbose_name='微信号')
    web_home = m.URLField(verbose_name='个人主页')
    github = m.URLField(verbose_name='GitHub主页')
    git_oschina = m.URLField(verbose_name='OsChina主页')

    def __str__(self):
        return self.web_home

    class Meta:
        verbose_name = '关于信息'
        verbose_name_plural = verbose_name


# 关于-客户评价
class Testimonials(HomeBaseModel):
    content = RichTextUploadingField(max_length=200, config_name='mini', verbose_name='评价内容')
    # author = m.ForeignKey(settings.AUTH_USER_MODEL, verbose_name='作者', on_delete=m.DO_NOTHING)
    author = m.CharField(max_length=20, verbose_name='评价人')
    about = m.ForeignKey(About, on_delete=m.CASCADE, verbose_name='关于')

    class Meta:
        verbose_name = '客户评价'
        verbose_name_plural = verbose_name


# 关于-我们的客户
class OurClient(HomeBaseModel):
    logo = m.FileField(upload_to="upload/our_clients/", verbose_name='客户LOGO')
    url = m.URLField(verbose_name='客户官网地址')
    about = m.ForeignKey(About, on_delete=m.CASCADE, verbose_name='关于')

    class Meta:
        verbose_name = '我们的客户'
        verbose_name_plural = verbose_name


# 关于-团队
class TeamMember(HomeBaseModel):
    picture = m.ImageField(upload_to='upload/team/%Y/%m/%d', verbose_name='照片')
    name = m.CharField(max_length=20, verbose_name='姓名')
    job = m.CharField(max_length=50, verbose_name='职位')
    introduce = RichTextUploadingField(max_length=500, config_name='mini', verbose_name='介绍')
    about = m.ForeignKey(About, on_delete=m.CASCADE, verbose_name='关于')

    class Meta:
        verbose_name = '我们的团队'
        verbose_name_plural = verbose_name
