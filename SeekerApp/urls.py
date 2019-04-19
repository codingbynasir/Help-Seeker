from django.urls import path
from . import views

app_name="SeekerApp"
urlpatterns = [
    path('', views.getIndex, name="index"),
    path('create', views.createPost.as_view(), name="createseek"),
]