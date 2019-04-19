from django.shortcuts import render, redirect, get_object_or_404, Http404
from django.contrib.auth.models import User
from django.contrib.auth import login, logout, authenticate
from django.views import View
from django.contrib import messages
from SeekerApp.models import People
from .forms import RegistrationForm, ProfileUpdateForm
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
            try:
                usr=get_object_or_404(People, name=request.user.id)
                request.session['type']=usr.type
                return redirect('people:update')
            except Exception as e:
                request.session['type']=None
            return redirect('seeker:index')
        else:
            messages.error(request, "Username and password is mismatched")
            return redirect('people:login')

class getRegister(View):
    def get(self, request):
        return render(request, 'forms/register.html', {"form":RegistrationForm})
    def post(self, request):
        form=RegistrationForm(request.POST);
        username=request.POST.get('username')
        account_type=request.POST.get('type')
        if form.is_valid():
            form.save()
            usr=get_object_or_404(User, username=username)
            instance=People.objects.create(name=usr,nid="", type=account_type)
            instance.save()
            messages.success(request, "Registration successfully completed. Login now.")
            return redirect("people:register")
        else:
            messages.error(request, "Registration failed")
            return redirect('people:register')
class getUpdate(View):
    def get(self, request):
        if request.user.is_authenticated:
            if request.session['type']:
                try:
                    instance=get_object_or_404(People, name=request.user.id)
                    form=ProfileUpdateForm(instance=instance)
                    return render(request, 'forms/profile_update.html', {"form": form})
                except Exception as e:
                    raise Http404("Something went wrong")
            else:
                raise Http404
        else:
            return redirect('people:login')
    def post(self, request):
        user=get_object_or_404(People, name=request.user.id)
        form=ProfileUpdateForm(request.POST or None, request.FILES or None, instance=user)
        if form.is_valid():
            ins=form.save(commit=False)
            ins.save()
            messages.success(request, "Profile info is updated")
        else:
            messages.error(request, "Profile information is not updated")
        return redirect('people:update')

class getProfile(View):
    def get(self, request):
        if request.user.is_authenticated:
            if request.session['type']:
                try:
                    profile=get_object_or_404(People, name=request.user.id)
                    context={
                        "profile": profile
                    }
                    return render(request, "profile.html", context)
                except:
                    return redirect('people:update')
            else:
                raise Http404
        else:
            return redirect('people:login')


def getLogout(request):
    logout(request)
    return redirect('seeker:index')


