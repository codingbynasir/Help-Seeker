from django.urls import path
from . import views
app_name="PeopleApp"
urlpatterns = [
    path('register', views.getRegister.as_view(), name="register"),
    path('update', views.getUpdate.as_view(), name="update"),
    path('login', views.getLogin.as_view(), name="login"),
    path('logout', views.getLogout, name="logout"),
]