from django.urls import path
from . import views
from .views import SearchView


urlpatterns = [
    path('', views.SearchView, name='search')
]
