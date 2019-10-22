from django.contrib import admin
from .models import Subject, Time_Period, Video_Entry, Region, Natural_Science, Formal_Science, Natural_Science_Video

# Register your models here.

admin.site.register(Subject)
admin.site.register(Time_Period)
admin.site.register(Video_Entry)
admin.site.register(Natural_Science)
admin.site.register(Formal_Science)
admin.site.register(Natural_Science_Video)
