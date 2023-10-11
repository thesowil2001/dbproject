from django.urls import path
from Apps.TipoProducto.views import home

urlpatterns = [
    path('inicio/', home, name= 'home'),
]
