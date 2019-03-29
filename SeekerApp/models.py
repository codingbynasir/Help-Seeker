from django.contrib.auth.models import User
from django.db import models
# Create your models here.
class People(models.Model):
    name=models.ForeignKey(User, on_delete=models.CASCADE)
    nid=models.CharField(max_length=30)
    date_of_birth=models.DateField()
    phone=models.CharField(max_length=20)
    type=models.CharField(max_length=50, choices=(("donor","Donor"),("seeker","Seeker"),("volunteer","Volunteer")))
    image=models.ImageField(upload_to="profile_picture")

    class Meta:
        verbose_name_plural="People"

    def __str__(self):
        return self.name.username

class Post(models.Model):
    title=models.CharField(max_length=200)
    description=models.TextField()
    is_aproved=models.BooleanField(default=False, null=True, blank=True)
    update=models.CharField(max_length=200, help_text="Did seeker get the help?")
    verified_by=models.ForeignKey(People, on_delete=models.CASCADE)
    name=models.ForeignKey(People, on_delete=models.CASCADE, related_name="post_owner")
    nid=models.CharField(max_length=30)
    image = models.ImageField(upload_to="post")
    posted_on=models.DateTimeField(auto_now=True)
    def __str__(self):
        return self.title