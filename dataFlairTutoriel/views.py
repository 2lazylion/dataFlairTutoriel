from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.views.generic.base import RedirectView

def index(request):
    return HttpResponse("<h1>Data Flair Django</h1>Hello, you just configured your First URL")

def data_flair(request):
    return redirect('/')

class tutorial(RedirectView):
    url = 'https://data-flair.training/blogs/category/django/'

def cookie_session(request):
    # set un test de cookie dans la session
    request.session.set_test_cookie()

    return HttpResponse("<h1>dataflair</h1>")

def cookie_delete(request):
    # si le test cookie existe
    if request.session.test_cookie_worked():
        # delete le cookie
        request.session.delete_test_cookie()

        response = HttpResponse("dataflair<br> cookie created")
    else:
        response = HttpResponse("Dataflair <br> Your browser does not accept cookies")
    return response

def create_session(request):
    # rajoute les infos du user dans la session
    request.session['name'] = 'username'
    request.session['password'] = 'password123'
    return HttpResponse("<h1>dataflair<br> the session is set</h1>")

def access_session(request):
    response = "<h1>Welcome to Sessions of dataflair</h1><br>"
    
    # si il y a un nom et un password dans la session
    # ajoute les dans la reponse qu'on envoie au client
    if request.session.get('name') and request.session.get('password'):
        name = "Name : {0} <br>".format(request.session.get('name'))
        password = "Password : {0} <br>".format(request.session.get('password'))
        response += name + password
        return HttpResponse(response)

    else:
        return redirect('/create')

def delete_session(request):
    try:
        del request.session['name']
        del request.session['password']
    except KeyError:
        pass
    return HttpResponse("<h1>dataflair<br>Session Data cleared</h1>")
    
    