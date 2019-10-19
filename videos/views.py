from django.shortcuts import render
from .models import Video_Entry
from django.db.models import Q
from django.http import JsonResponse

# Create your views here.


def SearchView(request):
    # model = Video_Entry
    params = request.GET.get('q')
    q_result = Video_Entry.objects.filter(
        Q(title__icontains=params) | Q(description__icontains=params) | Q(tags__icontains=params)
    ).values()
    return JsonResponse(list(q_result), safe=False)
