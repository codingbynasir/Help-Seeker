from django.contrib import admin
from .models import People, Post, Payment, Account
# Register your models here.
class modelPeople(admin.ModelAdmin):
    search_fields = ["__str__","phone","type"]
    list_display = ["__str__","date_of_birth","phone","type"]
    list_filter = ["type", "date_of_birth"]
    list_per_page = 20
    class Meta:
        model=People
admin.site.register(People, modelPeople)

class modelPost(admin.ModelAdmin):
    search_fields = ["__str__","name","update","is_aproved"]
    list_display = ["__str__","name","update","amount","is_aproved"]
    list_filter = ["is_aproved", "posted_on"]
    list_per_page = 20
    class Meta:
        model=Post
admin.site.register(Post, modelPost)


class modelPayment(admin.ModelAdmin):
    list_display = ["__str__","__donor__","__seeker__", "paid_amount"]
    list_per_page = 20
    class Meta:
        model=Payment
admin.site.register(Payment, modelPayment)

class modelAccount(admin.ModelAdmin):
    list_display = ["__depositor__","balance","__str__"]
    list_per_page = 20
    class Meta:
        model=Account
admin.site.register(Account, modelAccount)

