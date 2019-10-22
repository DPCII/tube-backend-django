from django.shortcuts import render
from .models import Video_Entry, Natural_Science_Video
from itertools import chain
from django.db.models import Q
from django.http import JsonResponse

# Create your views here.


def SearchView(request):
    # model = Video_Entry
    params = request.GET.get('q')
    history_result = Video_Entry.objects.filter(
        Q(title__icontains=params) | Q(description__icontains=params) | Q(tags__icontains=params)
    ).values()
    natural_science_result = Natural_Science_Video.objects.filter(
        Q(title__icontains=params) | Q(description__icontains=params) | Q(tags__icontains=params)
    ).values()
    q_result = list(chain(history_result, natural_science_result))
    return JsonResponse(q_result, safe=False)
