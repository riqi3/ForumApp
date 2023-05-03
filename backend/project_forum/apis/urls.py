from django.urls import path

from .views import ListForum, DetailForum

urlpatterns = [
    path('', ListForum.as_view()),
    path('<int:pk>/', DetailForum.as_view())
]