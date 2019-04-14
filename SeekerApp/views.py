from django.shortcuts import render
from .models import Post
# Create your views here.
def getIndex(request):
	post=Post.objects.all()
	s=request.GET.get('s')
	if s:
		post=post.filter(title__icontains=s)
	return render(request, "index.html", {"posts":post})