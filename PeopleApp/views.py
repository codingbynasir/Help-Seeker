from django.shortcuts import render, redirect
from django.contrib.auth.models import User
from django.contrib.auth import login, logout, authenticate
from django.views import View
# Create your views here.

class getLogin(View):
    def get(self, request):
        if request.user.is_authenticated:
            return redirect('seeker:index')
        return render(request, "forms/login.html")
    def post(self, request):
        username=request.POST.get('username')
        password=request.POST.get('password')
        auth=authenticate(request, username=username, password=password)
        if auth is not None:
            login(request, auth)
            return redirect('seeker:index')
        else:
            return redirect('people:login')

def getLogout(request):
    logout(request)
    return redirect('seeker:index')