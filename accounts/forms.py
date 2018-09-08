from django.contrib.auth.forms import AuthenticationForm, UserCreationForm
from django.forms import widgets
from django.conf import settings
from django.contrib.auth import get_user_model


class LoginForm(AuthenticationForm):
    def __init__(self, *args, **kwargs):
        super(LoginForm, self).__init__(*args, **kwargs)
        self.fields['username'].widget = widgets.TextInput(attrs={'placeholder': "用户名", "class": "form-control"})
        self.fields['password'].widget = widgets.PasswordInput(
            attrs={'placeholder': "密码", "class": "form-control"})


class RegisterForm(UserCreationForm):
    def __init__(self, *args, **kwargs):
        super(RegisterForm, self).__init__(*args, **kwargs)

        self.fields['username'].widget = widgets.TextInput(attrs={'placeholder': "用户名", "class": "form-control"})
        self.fields['email'].widget = widgets.EmailInput(attrs={'placeholder': "邮箱", "class": "form-control"})
        self.fields['password1'].widget = widgets.PasswordInput(
            attrs={'placeholder': "密码", "class": "form-control"})
        self.fields['password2'].widget = widgets.PasswordInput(
            attrs={'placeholder': "再次输入密码", "class": "form-control"})

    class Meta:
        model = get_user_model()
        fields = ("username", "email")
