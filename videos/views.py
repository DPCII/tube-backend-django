from django.shortcuts import render
from .models import Video_Entry
from django.db.models import Q
from django.http import JsonResponse

# Create your views here.


def SearchView(request):
    # model = Video_Entry
    q_result = Video_Entry.objects.all().values()
    return JsonResponse({"Video_Entry": list(q_result)}, safe=False)
