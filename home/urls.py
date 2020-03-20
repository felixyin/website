"""website URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""

from django.urls import path

from . import views as v

app_name = 'home'

urlpatterns = [
    path('', v.HomeView.as_view(), {'pk': 1}, name='index'),
    # path('', v.index,  name='index'),
    path('404/', v.miss_page, name='miss-page'),
    path('about/', v.AboutDetailView.as_view(), {'pk': 1}, name='about'),
    path('project/', v.ProjectListView.as_view(), name='project-list'),
    path('project/<int:pk>', v.ProjectDetailView.as_view(), name='project-detail'),

    path('portfolio-2/', v.portfolio_2, name='blog-post'),
    path('portfolio-2/', v.portfolio_2, name='portfolio-2'),
    path('portfolio-3/', v.portfolio_3, name='portfolio-3'),
    path('pricing-tables/', v.pricing_tables, name='pricing-tables'),
    path('services/', v.services, name='services'),
    path('shortcodes/', v.shortcodes, name='shortcodes'),
    path('single-project/', v.single_project, name='single-project'),
    path('text-columns/', v.text_columns, name='text-columns'),
]
