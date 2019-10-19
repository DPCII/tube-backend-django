from django.contrib import admin
from .models import Subject, Time_Period, Video_Entry, Region

# Register your models here.

admin.site.register(Subject)
admin.site.register(Time_Period)
admin.site.register(Video_Entry)
admin.site.register(Region)
