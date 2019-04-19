from django.shortcuts import render, redirect, Http404, get_object_or_404
from django.views import View
from .models import Post, People
from .forms import PostForm
from django.contrib import messages
# Create your views here.
def getIndex(request):
    post=Post.objects.all()
    s=request.GET.get('s')
    if s:
        post=post.filter(title__icontains=s)
    return render(request, "index.html", {"posts":post})

class createPost(View):
    def get(self, request):
        if request.user.is_authenticated:
            if request.session['type'] == 'seeker':
                form=PostForm
                return render(request, "forms/form.html", {"form": form})
            else:
                raise Http404
        else:
            return redirect('people:login')

    def post(self, request):
        user = get_object_or_404(People, name=request.user.id)
        form=PostForm(request.POST or None, request.FILES or None)
        if form.is_valid():
            instance=form.save(commit=False)
            instance.name=user
            instance.save()
            messages.success(request, "Seeking post is published")
            return redirect('seeker:createseek')
        else:
            messages.error(request, "Post is not published")
            return redirect('seeker:createseek')