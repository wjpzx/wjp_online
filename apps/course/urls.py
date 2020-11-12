from django.urls import path,re_path

from . import views

app_name = "course"

urlpatterns = [
    path('list/',views.CourseListView.as_view(),name = 'course_list'),
    re_path('course/(?P<course_id>\d+)/',views.CourseDetailView.as_view(),name = 'course_detail'),
    re_path('info/(?P<course_id>\d+)/',views.CourseInfoView.as_view(),name = 'course_video'),
    re_path('comment/(?P<course_id>\d+)/',views.CommentsView.as_view(),name = 'course_comment'),
    re_path('vedio/(?P<video_id>\d+)',views.VideoPlayView.as_view(),name = 'video_play'),
    path('add_comment/',views.AddCommentsView.as_view(),name = 'add_comment'),
]