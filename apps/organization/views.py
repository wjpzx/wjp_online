from django.shortcuts import render,HttpResponse
from django.http import JsonResponse
from django.views.generic.base import View
from django.db.models import Q

from pure_pagination import PageNotAnInteger,Paginator

from .models import CourseOrg,CityDict,Teacher
from operation.models import UserAsk,UserFavorite
from course.models import Course
from .forms import UserAskForm
# Create your views here.


class OrgView(View):
    """课程机构"""
    def get(self,request):
        # 取出所有课程机构
        all_orgs = CourseOrg.objects.all()
        # 所有城市
        all_citys = CityDict.objects.all()

        # 机构搜索功能
        search_keywords = request.GET.get('keywords','')
        if search_keywords:
            # 在name字段进行操作，做like语句的操作。
            all_orgs = all_orgs.filter(Q(name__icontains=search_keywords) | Q(desc__icontains=search_keywords))
        # 城市筛选
        city_id = request.GET.get('city', '')
        if city_id:
            all_orgs = all_orgs.filter(city_id=int(city_id))

        # 类别筛选
        category = request.GET.get('ct', '')
        if category:
            all_orgs = all_orgs.filter(category=category)

        # 热门课程机构排名
        hot_orgs = all_orgs.order_by('-click_nums')[:3]
        # 学习人数和课程数筛选
        sort = request.GET.get('sort', "")
        if sort:
            if sort == "students":
                all_orgs = all_orgs.order_by("-students")
            elif sort == "courses":
                all_orgs = all_orgs.order_by("-course_nums")
            else:
                all_orgs = all_orgs.order_by("name")
        # 有多少家机构
        org_nums = all_orgs.count()
        # 对课程机构进行分页
        # 尝试获取前台get请求传递过来的page参数
        # 如果是不合法的配置参数默认返回第一页
        try:
            page = request.GET.get('page',1)
        except PageNotAnInteger:
            page = 1
        # 这里指从all_org中取五个出来,每页显示5个
        p = Paginator(all_orgs,3,request=request)
        orgs = p.page(page)
        context = {
            'all_orgs':orgs,
            "all_citys":all_citys,
            "org_onums":org_nums,
            'city_id':city_id,
            'category':category,
            'hot_orgs':hot_orgs,
            'sort':sort,
            'search_keywords':search_keywords,

        }
        return render(request,'organization/org-list.html',context=context)


class AddUserAskView(View):
    """用户添加咨询"""
    def post(self,request):
        userask_form = UserAskForm(request.POST)
        if userask_form.is_valid():
            user_ask = userask_form.save(commit=True)
            # 如果保存成功，返回json字符串，后面content_type是告诉浏览器返回的数据类型
            return HttpResponse('{"status":"success"}',content_type='application/json')
        else:
            # 如果保存失败，返回json字符串，并将form的报错信息通过msg传递到前端
            return HttpResponse('{"status":"fail","msg":"添加出错"}',content_type='application/json')


class OrgHomeView(View):
    """机构首页"""
    def get(self,request,org_id):
        current_page = 'home'
        # 根据id找到课程机构
        course_org = CourseOrg.objects.get(id=int(org_id))
        # 点击数加一
        course_org.click_nums += 1
        course_org.save()

        # 判断收藏状态
        has_fav = False
        if request.user.is_authenticated:
            if UserFavorite.objects.filter(user=request.user, fav_id=course_org.id, fav_type=2):
                has_fav = True
        # 反向查询到课程机构的所有课程和老师
        all_courses = course_org.course_set.all()[:4]
        all_teacher = course_org.teacher_set.all()[:2]
        context = {
            'course_org':course_org,
            'all_courses':all_courses,
            'all_teacher':all_teacher,
            'current_page':current_page,
            'has_fav':has_fav,
        }
        return render(request,'organization/org-detail-homepage.html',context=context)


class OrgCourseView(View):
    """机构课程列表"""
    def get(self,request,org_id):
        current_page = 'course'
        # 根据id取到课程机构
        course_org = CourseOrg.objects.get(id=int(org_id))
        print(course_org)
        # 通过课程机构找到课程。内键的变量，找到指向这个字段的外键引用
        all_courses = course_org.course_set.all()
        # 判断收藏状态
        has_fav = False
        if request.user.is_authenticated:
            if UserFavorite.objects.filter(user=request.user, fav_id=course_org.id, fav_type=2):
                has_fav = True
        context = {
            'all_courses':all_courses,
            'course_org':course_org,
            'current_page':current_page,
            'has_fav':has_fav,
        }
        return render(request,'organization/org-detail-course.html',context=context)


class OrgDescView(View):
    """机构介绍页"""
    def get(self,request,org_id):
        current_page = 'desc'
        # 根据id取到课程机构
        course_org = CourseOrg.objects.get(id=int(org_id))
        # 判断收藏状态
        has_fav = False
        if request.user.is_authenticated:
            if UserFavorite.objects.filter(user=request.user, fav_id=course_org.id, fav_type=2):
                has_fav = True
        context = {
            'course_org':course_org,
            'current_page':current_page,
            'has_fav':has_fav,
        }
        return render(request,'organization/org-detail-desc.html',context=context)


class OrgTeacherView(View):
    """机构教师页"""
    def get(self,request,org_id):
        current_page='teacher'
        course_org = CourseOrg.objects.get(id=int(org_id))
        all_teacher = course_org.teacher_set.all()
        # 判断收藏状态
        has_fav = False
        if request.user.is_authenticated:
            if UserFavorite.objects.filter(user=request.user, fav_id=course_org.id, fav_type=2):
                has_fav = True
        context = {
            'course_org':course_org,
            'current_page':current_page,
            'all_teacher':all_teacher,
            'has_fav':has_fav,
        }
        return render(request,'organization/org-detail-teachers.html',context=context)


class TeacherListView(View):
    def get(self,request):
        all_teachers = Teacher.objects.all().order_by("id")

        # 搜索展示
        search_keywords = request.GET.get('keywords','')
        if search_keywords:
            all_teachers = all_teachers.filter(Q(name__icontains=search_keywords) | Q(work_years__iexact=search_keywords))

        # 教师总人数
        teacher_nums = all_teachers.count()
        # 排序
        sort = request.GET.get("sort","")
        if sort:
            if sort == 'hot':
                all_teachers = all_teachers.order_by("-click_nums")
        else:
            # 默认按名字排序
            all_teachers = all_teachers.order_by("name")

        # 讲师排行榜
        sorted_teacher = Teacher.objects.all().order_by("-click_nums")[:3]
        paginator = Paginator(all_teachers,1)
        try:
            page = request.GET.get('page',1)
        except PageNotAnInteger:
            page=1
        page = paginator.page(page)

        context={
            'all_teachers':all_teachers,
            'page':page,
            'paginator':paginator,
            'sort':sort,
            'sorted_teacher':sorted_teacher,
            'teacher_nums':teacher_nums,
            'search_keywords':search_keywords,
        }

        return render(request,'teacher/teachers-list.html',context=context)



class TeacherDetailView(View):
    def get(self,request,teacher_id):
        teacher = Teacher.objects.get(id=int(teacher_id))
        # 点击数加一
        teacher.click_nums += 1
        teacher.save()

        all_course = Course.objects.filter(teacher=teacher)
        # 教师收藏和机构收藏
        has_teacher_faved = False
        if UserFavorite.objects.filter(user=request.user,fav_type=3,fav_id=teacher.id):
            has_teacher_faved =True

        has_org_faved = False
        if UserFavorite.objects.filter(user=request.user,fav_type=2,fav_id=teacher.org.id):
            has_org_faved = True
        # 讲师排行榜
        sorted_teacher = Teacher.objects.all().order_by("-click_nums")[:3]
        context = {
            'teacher':teacher,
            'all_course':all_course,
            'sorted_teacher':sorted_teacher,
            'has_teacher_faved':has_teacher_faved,
            'has_org_faved':has_org_faved,
        }
        return render(request,'teacher/teacher-detail.html',context=context)


class AddFavView(View):
    """用户收藏和取消"""
    def post(self,request):
        user = request.user
        id = request.POST.get('fav_id',0)            # 防止后边int(fav_id)时出错
        type = request.POST.get('fav_type',0)

        if not user.is_authenticated:
            # 未登录时返回json提示未登录，跳转到登录页面是在ajax中做的
            return HttpResponse('{"status":"fail","msg":"用户未登录"}',content_type='application/json')

        exist_record = UserFavorite.objects.filter(user = request.user,fav_id=int(id),fav_type=int(type))
        if exist_record:
            # 如果记录已存在，表示用户取消收藏
            exist_record.delete()
            if int(type) == 1:
                course = Course.objects.get(id=int(id))
                course.fav_nums -= 1
                if course.fav_nums < 0:
                    course.fav_nums = 0
                course.save()
            elif int(type) == 2:
                org = CourseOrg.objects.get(id=int(id))
                org.fav_nums -= 1
                if org.fav_nums < 0:
                    org.fav_nums=0
                org.save()
            elif int(type) == 3:
                teacher = Teacher.objects.get(id=int(id))
                teacher.fav_nums -= 1
                if teacher.fav_nums < 0:
                    teacher.fav_nums = 0
                teacher.save()
            return HttpResponse('{"status":"success","msg":"收藏"}',content_type='application/json')
        else:
            user_fav = UserFavorite()
            if int(id)>0 and int(type)>0:
                user_fav.user = request.user
                user_fav.fav_id = int(id)
                user_fav.fav_type = int(type)
                user_fav.save()

                if int(type) == 1:
                    course = Course.objects.get(id=int(id))
                    course.fav_nums += 1
                    course.save()
                elif int(type) == 2:
                    org = CourseOrg.objects.get(id=int(id))
                    org.fav_nums += 1
                    org.save()
                elif int(type) == 3:
                    teacher = Teacher.objects.get(id=int(id))
                    teacher.fav_nums += 1
                    teacher.save()
                return HttpResponse('{"status":"success","msg":"已收藏"}',content_type='application/json')
            else:
                return JsonResponse({"status":"fail","msg":"收藏出错"})