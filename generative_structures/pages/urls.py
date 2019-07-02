from django.conf.urls import  url
from django.urls import path
from django.views.generic import TemplateView

urlpatterns = path('',
    url('^$', TemplateView.as_view(template_name='index.html')),
)