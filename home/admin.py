from django.contrib import admin

from .models import *


# 首页跑马灯
class HomeCarouselInline(admin.StackedInline):
    model = HomeCarousel
    min_num = 2
    max_num = 8


# 首页我们的优势
class HomeSuperiorityInline(admin.StackedInline):
    model = HomeSuperiority
    min_num = 3
    max_num = 3


class HomeAdmin(admin.ModelAdmin):
    # search_fields = ('name', 'description',)
    list_display = ('slogan', 'carousel_delay', 'testimonials_delay')
    inlines = [HomeCarouselInline, HomeSuperiorityInline]


class ServiceItemInline(admin.TabularInline):
    model = ServiceItem
    min_num = 3
    max_num = 9


class ServerProcessInline(admin.TabularInline):
    model = ServerProcess
    min_num = 1
    max_num = 15


class ServiceAdmin(admin.ModelAdmin):
    search_fields = ('name', 'description',)
    list_display = ('name', 'thumb', 'description', 'slogan')
    exclude = ('slug', 'last_mod_time', 'created_time')
    inlines = [ServiceItemInline, ServerProcessInline]


class ProjectTagAdmin(admin.ModelAdmin):
    search_fields = ('name', 'description',)
    list_display = ('name', 'description',)
    actions_on_bottom = True
    actions_on_top = False


class ProjectAttachInline(admin.TabularInline):
    model = ProjectAttach
    min_num = 0
    max_num = 20


class ProjectAdmin(admin.ModelAdmin):
    # formfield_overrides = {
    #     'content': {'widget': MDEditorWidget}
    # }
    search_fields = ('name', 'description', 'content')
    list_display = ('name', 'last_mod_time', 'is_enable', 'sequence',)
    inlines = [ProjectAttachInline]
    filter_horizontal = ('tags',)


class TestimonialsInline(admin.StackedInline):
    model = Testimonials
    min_num = 0
    max_num = 50


class OurClientInline(admin.TabularInline):
    model = OurClient
    min_num = 3
    max_num = 20


class TeamMemberInline(admin.StackedInline):
    model = TeamMember
    min_num = 3
    max_num = 10


class AboutAdmin(admin.ModelAdmin):
    exclude = ()
    list_display = ('web_home', 'address', 'phone', 'email',)
    inlines = [TestimonialsInline, OurClientInline, TeamMemberInline]
