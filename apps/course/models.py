from datetime import datetime

from django.db import models

from organization.models import CourseOrg,Teacher

# Create your models here.


# Course课程表
class Course(models.Model):
    DEGREE_CHOICES = (
        ('cj',"初级"),
        ('zj',"中级"),
        ('gj',"高级"),
    )

    name = models.CharField(verbose_name="课程名",max_length=50)
    desc = models.CharField(verbose_name="课程描述",max_length=300)
    detail = models.TextField(verbose_name="课程详情")
    degree = models.CharField(verbose_name='难度',choices=DEGREE_CHOICES,max_length=2)
    learn_times = models.IntegerField(verbose_name="学习时长(分钟数)",default=0)
    students = models.IntegerField(verbose_name="学习人数",default=0)
    fav_nums = models.IntegerField(verbose_name="收藏人数",default=0)
    image = models.ImageField(verbose_name="封面图",upload_to='courses/%Y%m',max_length=100)
    click_nums = models.IntegerField(verbose_name="点击数",default=0)
    add_time = models.DateTimeField(verbose_name="添加时间",default=datetime.now)
    course_org = models.ForeignKey(CourseOrg,on_delete=models.CASCADE,verbose_name="所属机构",null=True,blank=True)
    category = models.CharField(max_length=20,default="",verbose_name="课程类别")
    tag = models.CharField(default='',max_length=10,verbose_name='课程标签')
    teacher = models.ForeignKey(Teacher,verbose_name='讲师',null=True,blank=True,on_delete=models.CASCADE)
    youneed_know = models.CharField(max_length=300,default='',verbose_name='课程须知')
    teacher_tell = models.CharField(max_length=300,default='',verbose_name='老师告诉你')
    is_banner = models.BooleanField(default=False,verbose_name='是否轮播')

    class Meta:
        verbose_name="课程"
        verbose_name_plural=verbose_name

    def get_zi_nums(self):
        # 获取课程的章节数
        return self.lesson_set.all().count()

    def get_learn_users(self):
        # 获取这门课程的学习用户
        return self.usercourse_set.all()[:5]

    def get_course_lesson(self):
        # 获取课程的章节
        return self.lesson_set.all()

    def __str__(self):
        return self.name


# Lesson章节信息表
class Lesson(models.Model):
    course = models.ForeignKey(Course,verbose_name='课程',on_delete=models.CASCADE)
    name = models.CharField(verbose_name='章节名',max_length=100)
    add_time = models.DateTimeField(verbose_name="添加时间",default=datetime.now)

    class Meta:
        verbose_name = "章节"
        verbose_name_plural = verbose_name

    def get_lesson_video(self):
        # 获取章节所有视频
        return self.video_set.all()

    def __str__(self):
        return '《{0}》课程的章节 >> {1}'.format(self.course,self.name)


# Video视频
class Video(models.Model):
    lesson = models.ForeignKey(Lesson,verbose_name="章节",on_delete=models.CASCADE)
    name = models.CharField(verbose_name="视频名",max_length=100)
    add_time = models.DateTimeField(verbose_name="添加时间",default=datetime.now)
    url = models.CharField('访问地址',default='',max_length=200)
    learn_time = models.IntegerField("学习时长(分钟数)",default=0)

    class Meta:
        verbose_name = "视频"
        verbose_name_plural = verbose_name


# CourseResource课程资源
class CourseResource(models.Model):
    course = models.ForeignKey(Course,verbose_name="课程",on_delete=models.CASCADE)
    name = models.CharField(verbose_name="名称",max_length=100)
    download = models.FileField(verbose_name="资源文件",upload_to="course/resource/%Y%m",max_length=100)
    add_time = models.DateTimeField(verbose_name="添加时间",default=datetime.now)

    class Meta:
        verbose_name = "课程资源"
        verbose_name_plural = verbose_name