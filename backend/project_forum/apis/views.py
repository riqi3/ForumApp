from django.shortcuts import render
from rest_framework import generics

from forums import models
from .serializers import ForumSerializer

class ListForum(generics.ListCreateAPIView):
    queryset=models.Forum.objects.all()
    serializer_class=ForumSerializer

class DetailForum(generics.RetrieveUpdateDestroyAPIView):
    queryset = models.Forum.objects.all()
    serializer_class = ForumSerializer