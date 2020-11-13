from django.shortcuts import render
from . import forms

# Create your views here.
def regForm(request):
    # le formulaire initié sera celui de la class SignUp du fichier forms.py
    form = forms.SignUp()

    # si la method de la requete est post
    # ou ça signifie que c'est la deuxième fois qu'on reçoit
    # qu'on reçoit le form, donc on va fill in les valeurs valides
    #de la première fois de nouveau
    if request.method == 'POST':
        
        # le formulaire sera celui de la class SignUp du fichier forms.py
        # avec les infos de la requête. Si on est
        form = forms.SignUp(request.POST)
        html = 'we have recieved this form again'
        
        # verifie si les valeurs respectent leurs types
        if form.is_valid():
            html = html + "The Form is Valid"
    else:
        html = 'welcome for the first time'

    # render le template signup.html avec la request et un dict 
    # contenant le message et le for      
    return render(request, 'templates/signup.html', {'html': html, 'form': form})