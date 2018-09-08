from django import forms
from django.contrib import admin
from django.contrib.auth import get_user_model
from django.utils.translation import ugettext_lazy as _
from import_export import resources
from import_export.admin import ImportExportModelAdmin

# Register your models here.
from .models import *


class ArticleListFilter(admin.SimpleListFilter):
    title = _("作者")
    parameter_name = 'author'

    def lookups(self, request, model_admin):
        authors = list(set(map(lambda x: x.author, Article.objects.all())))
        for author in authors:
            yield (author.id, _(author.username))

    def queryset(self, request, queryset):
        id = self.value()
        if id:
            return queryset.filter(author__id__exact=id)
        else:
            return queryset


class ArticleForm(forms.ModelForm):
    # body = forms.CharField(widget=AdminPagedownWidget())

    class Meta:
        model = Article
        fields = '__all__'


def makr_article_publish(modeladmin, request, queryset):
    queryset.update(status='p')


def draft_article(modeladmin, request, queryset):
    queryset.update(status='d')


def close_article_commentstatus(modeladmin, request, queryset):
    queryset.update(comment_status='c')


def open_article_commentstatus(modeladmin, request, queryset):
    queryset.update(comment_status='o')


makr_article_publish.short_description = '发布选中文章'
draft_article.short_description = '选中文章设置为草稿'
close_article_commentstatus.short_description = '关闭文章评论'
open_article_commentstatus.short_description = '打开文章评论'


class FilesInline(admin.TabularInline):
    model = Files
    min_num = 0
    max_num = 10


class LinksInline(admin.TabularInline):
    model = Links
    min_num = 0
    max_num = 10


class ArticleResource(resources.ModelResource):
    class Meta:
        model = Article
        fields = ('title', 'pub_date', 'author',)


class ArticlelAdmin(ImportExportModelAdmin):
    resource_class = ArticleResource
    search_fields = ('title', 'body',)
    form = ArticleForm
    list_display = ('id', 'title', 'author', 'created_time', 'views', 'status', 'type', 'article_order')
    list_display_links = ('id', 'title')
    list_filter = (ArticleListFilter, 'status', 'type', 'category', 'tags')
    filter_horizontal = ('tags',)
    exclude = ('slug', 'created_time', 'last_mod_time')
    view_on_site = True
    actions = [makr_article_publish, draft_article, close_article_commentstatus, open_article_commentstatus]
    inlines = [FilesInline, LinksInline]

    def get_form(self, request, obj=None, **kwargs):
        form = super(ArticlelAdmin, self).get_form(request, obj, **kwargs)
        form.base_fields['author'].queryset = get_user_model().objects.filter(is_superuser=True)
        return form

    def save_model(self, request, obj, form, change):
        super(ArticlelAdmin, self).save_model(request, obj, form, change)
        from website.utils import cache
        cache.clear()

    def get_view_on_site_url(self, obj=None):
        if obj:
            url = obj.get_full_url()
            return url
        else:
            from django.contrib.sites.models import Site
            site = Site.objects.get_current().domain
            return site


class TagAdmin(admin.ModelAdmin):
    exclude = ('slug', 'last_mod_time', 'created_time')
    search_fields = ('name',)


class CategoryAdmin(admin.ModelAdmin):
    exclude = ('slug', 'last_mod_time', 'created_time')
    search_fields = ('name',)


class LinksAdmin(admin.ModelAdmin):
    exclude = ('last_mod_time', 'created_time')


class SideBarAdmin(admin.ModelAdmin):
    list_display = ('name', 'content', 'is_enable', 'sequence')
    exclude = ('last_mod_time', 'created_time')


class BlogSettingsAdmin(admin.ModelAdmin):
    pass
