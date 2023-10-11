from django.urls import path
from Apps.clientes.views import home

urlpatterns = [
    path('inicio/', home, name= 'home'),
]
