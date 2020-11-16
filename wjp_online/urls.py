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
from django.conf.urls.static import static

from wjp_online.settings import MEDIA_ROOT,STATIC_ROOT
from users import views
urlpatterns = [
    path('xadmin/', xadmin.site.urls),
    # 文件
    path("media/<path:path>",serve,{'document_root':MEDIA_ROOT}),
    path('ueditor/',include('DjangoUeditor.urls')),
    path('captcha/',include('captcha.urls')),

    path('',views.IndexView.as_view(),name='index'),
    path('user/',include('users.urls',namespace='user')),

    path('org/',include('organization.urls',namespace="org")),

    path('course/',include('course.urls',namespace='course')),

    re_path('static/(?P<path>.*)',serve,{"document_root":STATIC_ROOT}),

    # path('404.html',views.pag_not_found,name='404'),
    # path('500.html',views.page_error,name='500'),
]

#
# # 全局404页面配置
handler404 = views.pag_not_found
# # 全局500页面配置
handler500 = views.page_error
