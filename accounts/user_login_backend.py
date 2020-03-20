from django.conf import settings
from django.contrib.auth import get_user_model


class EmailOrUsernameModelBackend(object):
    """
    允许使用用户名或邮箱登录
    """

    def authenticate(self, request, username=None, password=None):
        if '@' in username:
            kwargs = {'email': username}
        else:
            kwargs = {'username': username}
        try:
            user = get_user_model().objects.get(**kwargs)
            check_password = user.check_password(password)
            print(check_password)
            if check_password:
                return user
        except get_user_model().DoesNotExist:
            return None

    def get_user(self, username):
        try:
            return get_user_model().objects.get(pk=username)
        except get_user_model().DoesNotExist:
            return None
