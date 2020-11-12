
from django.urls import path,re_path

from . import views

app_name = "organization"

urlpatterns = [
    path('list/',views.OrgView.as_view(),name='org_list'),
    path('add_ask/',views.AddUserAskView.as_view(),name='add_ask'),
    path('add_fav/',views.AddFavView.as_view(),name='add_fav'),
    path('teacher/list',views.TeacherListView.as_view(), name="teacher_list"),
    re_path('org_home/(?P<org_id>\d+)/',views.OrgHomeView.as_view(), name="org_home"),
    re_path('org_course/(?P<org_id>\d+)/',views.OrgCourseView.as_view(), name="org_course"),
    re_path('org_desc/(?P<org_id>\d+)/',views.OrgDescView.as_view(), name="org_desc"),
    re_path('org_teacher/(?P<org_id>\d+)/',views.OrgTeacherView.as_view(), name="org_teacher"),
    re_path('teacher/detail/(?P<teacher_id>\d+)/',views.TeacherDetailView.as_view(), name="teacher_detail"),
]