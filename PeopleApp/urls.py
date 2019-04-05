from django.urls import path
from . import views
app_name="PeopleApp"
urlpatterns = [
    path('login', views.getLogin.as_view(), name="login"),
    path('logout', views.getLogout, name="logout"),
]
