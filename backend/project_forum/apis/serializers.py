from rest_framework import serializers
from forums import models

class ForumSerializer(serializers.ModelSerializer):
    class Meta:
        fields=(
            'id',
            'title',
            'description',
        )
        model=models.Forum