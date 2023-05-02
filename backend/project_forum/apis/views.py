from django.shortcuts import render

from forums import models
from .serializers import ForumSerializer

class ListForum(generics.ListCreateAPIView):
    quueryset=models.objects.all()
    serializer_class=ForumSerializer

class DetailForum(generics.RetrieveUpdateDestroyAPIView):
    queryset = models.Forum.objects.all()
    serializer_class = ForumSerializer