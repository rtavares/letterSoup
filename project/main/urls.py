from django.urls import include, path
from rest_framework import routers

from . import views

router = routers.DefaultRouter()
router.register(r'listdata', views.SampleDataViewSet)

urlpatterns = [
    path('', views.Home.as_view()),
    path(r'api/', include(router.urls)),
]
