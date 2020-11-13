from django.shortcuts import render
from django.http import HttpResponse
from .models import Student

# Create your views here.
def student_show(request):
    student = Student.objects.order_by('roll_no')
    return render(request,'student/student_show.html', {'student': student})
    """
    x = [i for i in range(10)]
    return HttpResponse("<h1>DataFlair Django Tutorials</h1>The Digits are {0}".format(x))
    """