from django.shortcuts import render
from django.contrib.auth  import get_user_model
from rest_framework import generics, viewsets
from rest_framework.permissions import IsAuthenticated

from forums import models

from .serializers import ForumSerializer,UserSerializer

class UserViewSet(viewsets.ModelViewSet):
    permission_classes=(IsAuthenticated,)
    serializer_class = UserSerializer
    queryset = get_user_model().objects.all()

class ListForum(generics.ListCreateAPIView):
    queryset=models.Forum.objects.all()
    serializer_class=ForumSerializer

class DetailForum(generics.RetrieveUpdateDestroyAPIView):
    queryset = models.Forum.objects.all()
    serializer_class = ForumSerializer