"""website URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.10/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf import settings
from django.conf.urls import url, include
from django.conf.urls.static import static
from django.contrib.sitemaps.views import sitemap

from home.views import copy
from website.admin_site import admin_site
from website.feeds import WebsiteFeed
from website.sitemap import  *
from django.views.generic import TemplateView

# import xadmin
# xadmin.autodiscover()
# # version模块自动注册需要版本控制的 Model
# from xadmin.plugins import xversion
# xversion.register_models()

sitemaps = {
    'Home': HomeSiteMap,
    'Project': ProjectSiteMap,
    'Blog': ArticleSiteMap,
    'Category': CategorySiteMap,
    # 'Tag': TagSiteMap,
    'User': UserSiteMap,
    'static': StaticViewSitemap
}

handler404 = 'blog.views.page_not_found_view'
handler500 = 'blog.views.server_error_view'
handle403 = 'blog.views.permission_denied_view'

app_name = 'website'

urlpatterns = [
    # url(r'grappelli/', include('grappelli.urls')),  # grappelli URLS
    url(r'^admin/', admin_site.urls),
    # 富文本编辑器
    url(r'^ckeditor/', include('ckeditor_uploader.urls')),
    # MarkDown编辑器
    url(r'mdeditor/', include('mdeditor.urls')),
    # url(r'xadmin/', xadmin.site.urls),
    # 网站主模块
    url(r'', include('home.urls', namespace='home')),
    # 博客模块
    url(r'^blog/', include('blog.urls', namespace='blog')),
    # 通用评论模块
    url(r'', include('comments.urls', namespace='comment')),
    # 账号注册登录模块
    url(r'', include('accounts.urls', namespace='account')),
    # 权限管理模块
    url(r'', include('oauth.urls', namespace='oauth')),
    # 文件、图片上传下载
    # url(r'^media/(?P<path>.*)$', serve, {"document_root": MEDIA_ROOT}),
    # 搜索模块
    url(r'^search', include('haystack.urls'), name='search'),
    # 代码的复制模块
    url(r'^copy', copy, name='copy'),
    # SEO 优化
    url(r'^robots\.txt$', TemplateView.as_view(template_name='robots.txt', content_type='text/plain')),
    url(r'^sitemap\.xml$', sitemap, {'sitemaps': sitemaps},
        name='django.contrib.sitemaps.views.sitemap'),
    url(r'^feed/$', WebsiteFeed()),
    url(r'', include('servermanager.urls', namespace='servermanager')),
    url(r'', include('owntracks.urls', namespace='owntracks'))
]

if settings.DEBUG:
    urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
