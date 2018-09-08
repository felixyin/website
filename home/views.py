from django.shortcuts import render
# Create your views here.
from django.views.generic.detail import DetailView
from django.views.generic.list import ListView

from blog.models import *
from .models import *

logger = logging.getLogger(__name__)


# 关于
class AboutDetailView(DetailView):
    # template_name = 'home/about.html'
    model = About
    # pk_url_kwarg = 'pk'
    context_object_name = "about"


# 项目
class ProjectListView(ListView):
    # template_name = 'home/project_index.html'
    model = Project
    ordering = ('sequence',)

    def get_context_data(self, **kwargs):
        # pk = int(self.kwargs[self.pk_url_kwarg])
        kwargs['services'] = Service.objects.all()
        return super(ProjectListView, self).get_context_data(**kwargs)


# 项目详情
class ProjectDetailView(DetailView):
    model = Project

    def get_context_data(self, **kwargs):
        # pk = int(self.kwargs[self.pk_url_kwarg])
        kwargs['next_project'] = self.object.next_project
        kwargs['prev_project'] = self.object.prev_project
        kwargs['related_projects'] = self.object.get_related_projects
        return super(ProjectDetailView, self).get_context_data(**kwargs)


# 主页设置
class HomeDetailView(DetailView):
    template_name = 'index.html'
    model = Home

    def get_context_data(self, **kwargs):
        kwargs['recent_projects'] = Project.objects.order_by('-begin_time')[:4]
        blogs = Article.objects.order_by('-created_time')[:12]
        kwargs['latest_blogs1'] = blogs[0:4]
        kwargs['latest_blogs2'] = blogs[4:8]
        kwargs['latest_blogs3'] = blogs[8:12]
        return super(HomeDetailView, self).get_context_data(**kwargs)


def index(request):
    return render(request, 'index.html')


def miss_page(request):
    return render(request, 'home/404.html')


def pricing_tables(request):
    return render(request, 'home/pricing_tables.html')


def shortcodes(request):
    return render(request, 'home/shortcodes.html')


def text_columns(request):
    return render(request, 'home/text_columns.html')


def portfolio_2(request):
    return render(request, 'home/portfolio_2.html')


def portfolio_3(request):
    return render(request, 'home/portfolio_3.html')


def single_project(request):
    return render(request, 'home/project_detail.html')


def services(request):
    return render(request, 'home/services.html')


def copy(request):
    return render(request, 'share_layout/mycopy.html')
