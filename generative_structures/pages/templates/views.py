from django.shortcuts import render, render_to_response
from django.http import HttpResponse, HttpResponseRedirect
# Create your views here.

def openjscadView(request):
    # return HttpResponseRedirect('https://web.raymond31670.now.sh/#')
    return render_to_response('openjscad.html')