from django.contrib import admin
from .models import People, Post
# Register your models here.
class modelPeople(admin.ModelAdmin):
    search_fields = ["__str__","phone","type"]
    list_display = ["__str__","date_of_birth","phone","type"]
    list_filter = ["type"]
    list_per_page = 20
    class Meta:
        model=People
admin.site.register(People, modelPeople)

class modelPost(admin.ModelAdmin):
    search_fields = ["__str__","name","update","is_aproved"]
    list_display = ["__str__","name","update","is_aproved"]
    list_filter = ["is_aproved", "posted_on"]
    list_per_page = 20
    class Meta:
        model=Post
admin.site.register(Post, modelPost)