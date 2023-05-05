from django.db import models

from django.contrib.auth.models import AbstractUser

class UserLogin(AbstractUser):
    EMAIL_FIELD ='email'
    USERNAME_FIELD='email'
    REQUIRED_FIELDS=['username']

    username=models.CharField(blank=True, max_length=128,)
    email=models.EmailField(blank=True, max_length=128,unique=True, verbose_name='email address')

 