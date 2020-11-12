"""wjp_online URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
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
import xadmin
from django.urls import path,include,re_path
from django.views.static import serve
from django.views.generic import TemplateView

from wjp_online.settings import MEDIA_ROOT

urlpatterns = [
    path('xadmin/', xadmin.site.urls),
    # 文件
    path("media/<path:path>",serve,{'document_root':MEDIA_ROOT}),
    path('ueditor/',include('DjangoUeditor.urls')),
    path('captcha/',include('captcha.urls')),

    path('',TemplateView.as_view(template_name='index.html'),name='index'),
    path('user/',include('users.urls',namespace='user')),

    path('org/',include('organization.urls',namespace="org")),

    path('course/',include('course.urls',namespace='course')),

]
