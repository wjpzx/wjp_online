
from django.urls import path,include,re_path

from . import views

app_name = "user"

urlpatterns = [
    path('login/',views.LoginVew.as_view(),name='login'),
    path('logout/',views.LogoutView.as_view(),name='logout'),
    path('register/',views.RegisterView.as_view(),name='register'),
    path('forget/', views.ForgetPwdView.as_view(), name='forget_pwd'),
    path('modify_pwd/',views.ModifyPwdView.as_view(),name='modify_pwd'),

    re_path('active/(?P<active_code>.*)/',views.ActiveUserView.as_view(),name='user_active'),
    re_path('reset/(?P<active_code>.*)/',views.ResetView.as_view(),name='reset_pwd'),
]