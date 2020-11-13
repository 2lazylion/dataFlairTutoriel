from django.shortcuts import render
import datetime

# Create your views here.
def home(request):
    return render(request, 'template/base.html')

def other(request):
    context = {
        'k1': 'Welcome to the Second page'
    }
    return render(request, 'template/others.html', context)

def about(request):
    time = datetime.datetime.now()
    return render(request, 'template/about.html', {'time': time})