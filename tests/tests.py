import os

from django.test import TestCase

from django.contrib.auth.models import User


class SimpleTest(TestCase):

    def setUp(self) -> None:
        os.environ.setdefault("DJANGO_SETTINGS_MODULE", "website.settings")
        # User.objects.create(User(username="admin",password=""))

    def test_login(self):
        user = User.objects.get(username='admin')
        print(user)
