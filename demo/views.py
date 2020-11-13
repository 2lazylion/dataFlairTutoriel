from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def index(request):
    return HttpResponse("DataFlair Django Tutorial<html><body><h1> Hello World DataFlair Dango tutorials</body></html>")