from django.contrib.auth.models import User
from django.db import models
# Create your models here.
class People(models.Model):
    name=models.ForeignKey(User, on_delete=models.CASCADE)
    nid=models.CharField(max_length=30, null=True, blank=True)
    date_of_birth=models.DateField(null=True, blank=True)
    phone=models.CharField(max_length=20, null=True, blank=True)
    type=models.CharField(max_length=50, choices=(("donor","Donor"),("seeker","Seeker"),("volunteer","Volunteer")))
    image=models.ImageField(upload_to="profile_picture", null=True, blank=True)

    class Meta:
        verbose_name_plural="People"

    def __str__(self):
        return self.name.username

class Post(models.Model):
    title=models.CharField(max_length=200)
    description=models.TextField()
    is_aproved=models.BooleanField(default=False, null=True, blank=True)
    update=models.CharField(max_length=200, help_text="Did seeker get the help?", default="Not get help")
    name=models.ForeignKey(People, on_delete=models.CASCADE, related_name="post_owner")
    image = models.ImageField(upload_to="post")
    amount=models.DecimalField(max_digits=10, decimal_places=2)
    posted_on=models.DateTimeField(auto_now=True)
    def __str__(self):
        return self.title

class Payment(models.Model):
    donor=models.ForeignKey(People, on_delete=models.CASCADE)
    post=models.ForeignKey(Post, on_delete=models.CASCADE)
    paid_amount=models.DecimalField(max_digits=10, decimal_places=2)

    def __str__(self):
        return self.post.title
    def __donor__(self):
        return self.donor.name.username
    def __seeker__(self):
        return self.post.name.name.get_username()

class Account(models.Model):
    depositor = models.ForeignKey(People, on_delete=models.CASCADE)
    bank_name=models.CharField(max_length=200)
    branch=models.CharField(max_length=200)
    balance=models.DecimalField(max_digits=10, decimal_places=2)

    def __str__(self):
        return self.bank_name

    def __depositor__(self):
        return self.depositor.name.username