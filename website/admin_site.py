from django.contrib.admin import AdminSite
from django.contrib.admin.models import LogEntry
from django.contrib.sites.admin import SiteAdmin

from accounts.admin import *
from accounts.models import *
from blog.admin import *
from blog.models import *
from comments.admin import *
from home.admin import *
from home.models import *
from oauth.admin import *
from owntracks.admin import *
from servermanager.admin import *
from website.logentryadmin import LogEntryAdmin


class WebsiteAdminSite(AdminSite):
    site_header = '尹彬个人主页管理后台'
    site_title = '尹彬个人主页管理后台'

    def __init__(self, name='admin'):
        super().__init__(name)

    def has_permission(self, request):
        return request.user.is_superuser

    # def get_urls(self):
    #     urls = super().get_urls()
    #     from django.urls import path
    #     from blog.views import refresh_memcache
    #
    #     my_urls = [
    #         path('refresh/', self.admin_view(refresh_memcache), name="refresh"),
    #     ]
    #     return urls + my_urls


admin_site = WebsiteAdminSite(name='admin')

# blog
admin_site.register(Article, ArticlelAdmin)
admin_site.register(Category, CategoryAdmin)
admin_site.register(Tag, TagAdmin)
admin_site.register(Links, LinksAdmin)
admin_site.register(SideBar, SideBarAdmin)
admin_site.register(BlogSettings, BlogSettingsAdmin)

# email
admin_site.register(commands, CommandsAdmin)
admin_site.register(EmailSendLog, EmailSendLogAdmin)

# account
admin_site.register(BlogUser, BlogUserAdmin)

# comment
admin_site.register(Comment, CommentAdmin)

# oauth
admin_site.register(OAuthUser, OAuthUserAdmin)
admin_site.register(OAuthConfig, OAuthConfigAdmin)

admin_site.register(OwnTrackLog, OwnTrackLogsAdmin)

admin_site.register(Site, SiteAdmin)

admin_site.register(LogEntry, LogEntryAdmin)

# home
admin_site.register(Home, HomeAdmin)
# admin_site.register(ServiceItem, ServiceItemAdmin)
# admin_site.register(ServerProcess, ServerProcessAdmin)
# admin_site.register(Service, ServiceAdmin)
admin_site.register(Project, ProjectAdmin)
admin_site.register(ProjectTag, ProjectTagAdmin)
admin_site.register(About, AboutAdmin)
