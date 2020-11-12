import xadmin

from .models import CityDict,CourseOrg,Teacher
# Register your models here.


class CityDictAdmin(object):
    """城市"""
    list_display = ['name', 'desc', 'add_time']
    search_fields = ['name', 'desc']
    list_filter = ['name', 'desc', 'add_time']



class CourseOrgAdmin(object):
    """机构"""
    list_display = ['name', 'desc', 'click_nums', 'fav_nums', 'add_time']
    search_fields = ['name', 'desc', 'click_nums', 'fav_nums']
    list_filter = ['name', 'desc', 'click_nums', 'fav_nums', 'city__name', 'address', 'add_time']


class TeacherAdmin(object):
    """教师"""
    list_display = ['name', 'org', 'work_years', 'work_company', 'add_time']
    search_fields = ['name', 'org', 'work_years', 'work_company']
    list_filter = ['org__name', 'name', 'work_years', 'work_company', 'click_nums', 'fav_nums', 'add_time']


xadmin.site.register(CityDict,CityDictAdmin)
xadmin.site.register(CourseOrg,CourseOrgAdmin)
xadmin.site.register(Teacher,TeacherAdmin)