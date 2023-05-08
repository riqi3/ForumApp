from rest_framework import serializers
from forums import models
from django.contrib.auth  import get_user_model

class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = get_user_model()
        fields = '__all__'

class ForumSerializer(serializers.ModelSerializer):
    class Meta:
        fields=(
            'id',
            'title',
            'description',
        )
        model=models.Forum