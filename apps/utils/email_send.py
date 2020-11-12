from random import Random
from django.core.mail import send_mail

from users.models import EmailVerifyRecord
from wjp_online.settings import EMAIL_FROM


# 生成随机字符串
def random_str(random_length=8):
    code = ''
    # 生成字符串的可选字符串
    chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz0123456789'
    length = len(chars) - 1
    random = Random()
    for i in range(random_length):
        code += chars[random.randint(0,length)]
    return code
# 发送邮件
def send_register_email(email,send_type="register"):
    print("发送邮件")
    # 发送之前先保存到数据库，到时候查询链接是否存在
    # 实例化一个EmailVerifyRecord对象
    email_record = EmailVerifyRecord()
    # 生成随机的codes放入链接
    codes = random_str(16)
    email_record.code = codes
    email_record.email = email
    email_record.send_type=send_type

    email_record.save()

    # 定义邮件内容
    email_title = ""
    email_body = ""

    if send_type == "register":
        email_title = "在线教育注册激活链接"
        email_body = "请点击下面的链接激活你的账号：http://127.0.0.1:8000/user/active/{0}/".format(codes)
        # 使用django内置函数完成邮件发送。四个参数：主题，邮件内容，发件人邮箱地址，收件人（是一个字符串列表）
        send_status = send_mail(email_title,email_body,EMAIL_FROM,[email])
        #如果发送成功
        if send_status:
            pass
        else:
            print("发送注册邮件失败")

    if send_type == "forget":
        email_title = "在线教育找回密码链接"
        email_body = "请点击下面的链接找回你的密码：http://127.0.0.1:8000/user/reset/{0}".format(codes)

        # 使用django内置函数完成邮件发送。四个参数：主题，邮件内容，发件人邮箱地址，收件人（是一个字符串列表）
        send_status = send_mail(email_title, email_body, EMAIL_FROM, [email])
        # 如果发送成功
        if send_status:
            pass
        else:
            print("发送找回密码邮件失败")