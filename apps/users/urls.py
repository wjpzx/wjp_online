
from django.urls import path,include,re_path

from . import views

app_name = "user"

urlpatterns = [

    path('login/',views.LoginVew.as_view(),name='login'),
    path('logout/',views.LogoutView.as_view(),name='logout'),
    path('register/',views.RegisterView.as_view(),name='register'),
    path('forget/', views.ForgetPwdView.as_view(), name='forget_pwd'),
    path('modify_pwd/',views.ModifyPwdView.as_view(),name='modify_pwd'),
    path('info/',views.UserInfoView.as_view(),name='user_info'),
    path('image/upload/',views.UploadImageView.as_view(),name='image_upload'),
    path('pwd/',views.UpdatePwdView.as_view(),name='pwd'),
    path('send_email_code/',views.SendEmailCodeView.as_view(),name='email'),
    path('update_email/',views.UpdateEmailView.as_view(),name='update_email'),
    path('change/user/',views.ChangeUserInfoView.as_view(),name='change_user'),
    path('my_course/',views.MyCourseView.as_view(),name='my_course'),
    path('fav/org/',views.MyFavOrgView.as_view(),name='fav_org'),
    path('fav/teacher/',views.MyFavTeacherView.as_view(),name='fav_teacher'),
    path('fav/course/',views.MyFavCourseView.as_view(),name='fav_course'),
    path('message/',views.MyMessageView.as_view(),name='message'),

    # path('login/',views.LoginUnsafeView.as_view(),name='login'),

    re_path('active/(?P<active_code>.*)/',views.ActiveUserView.as_view(),name='user_active'),
    re_path('reset/(?P<active_code>.*)/',views.ResetView.as_view(),name='reset_pwd'),


]