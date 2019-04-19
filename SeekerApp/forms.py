from django import forms
from SeekerApp.models import Post


class PostForm(forms.ModelForm):
    class Meta:
        model = Post
        fields = ["title", "description", "image", "amount"]