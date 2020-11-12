import xadmin
from xadmin import views

from .models import UserProfile,EmailVerifyRecord,Banner
# Register your models here.


# 创建xadmin的最基本管理器配置，并与view绑定
class BaseSettings(object):
    # 开启主题功能
    enable_themes = True
    use_bootswatch = True


# 全局修改，固定写法
class GlobalSettings(object):
    """
    设置网页页头和页尾
    """
    # 修改title
    site_title = "在线教育后台管理系统"
    # 修改footer
    site_footer = "Powered By 1906c - 2020"
    # 设置菜单折叠
    menu_style = "accordion"


# xadmin中这里是继承object，不再是继承admin
class UserProfileAdmin(object):
    list_display = ["username","gender","mobile","address"]
    search_fields = ["username","gender","mobile","address"]
    list_filter = ["username","gender","mobile","address"]
    model_icon = 'fa fa-user'
    style_fields = {"address": "ueditor"}
    ordering = ['date_joined']  # 排序
    readonly_fields = ['nick_name']  # 只读字段，不能编辑
    exclude = ['gender','date_joined']  # 不显示的字段
    list_editable = ['mobile'] # 可编辑字段
    refresh_times = ['1','5','10','50','100','500']


class EmailVerifyRecordAdmin(object):
    # 显示的列
    list_display = ['code','email','send_type','send_time']
    # 搜索的字段，不要添加时间搜索
    search_fields = ['code','email','send_type']
    # 过滤
    list_filter = ['code','email','send_type','send_time']


class BannerAdmin(object):
    list_display = ['title','image','url','index','add_time']
    search_fields = ['title','image','url','index']
    list_filter = ['title','image','url','index','add_time']


xadmin.site.register(Banner,BannerAdmin)
xadmin.site.register(EmailVerifyRecord,EmailVerifyRecordAdmin)
# 将基本配置管理与view绑定
xadmin.site.register(views.BaseAdminView,BaseSettings)
# 将title和footer信息进行注册
xadmin.site.register(views.CommAdminView,GlobalSettings)
xadmin.site.unregister(UserProfile)
xadmin.site.register(UserProfile,UserProfileAdmin)