from django import forms
from django.core import validators

# Custom Validator
def check_size(value):
    if len(value) < 6:
        raise forms.ValidationError("the Password is too short")

# Create your models here.
class SignUp(forms.Form):
    first_name = forms.CharField(initial = 'First Name', )
    last_name = forms.CharField(required = False)
    email = forms.EmailField(help_text = 'write your email', required = False)
    address = forms.CharField(required = False, )
    technology = forms.CharField(initial = 'Django', disabled = True)
    age = forms.IntegerField(required = False, )
    password = forms.CharField(widget = forms.PasswordInput, validators = [check_size, ])
    #password = forms.CharField(widget = forms.PasswordInput, validators = [validators.MinLengthValidator(6)])
    re_password = forms.CharField(help_text = 'renter your password', widget = forms.PasswordInput, required = False)

    """
    # valide le mdp
    # doit avoir le format clean_fieldname()
    def clean_password(self):

        # self.cleaned_data['field-name'] prend le data reçu du 
        # form et le converti dans un format de données de python
        password = self.cleaned_data['password']
        
        # si la longueur du mdp est plus petite que 4 
        if len(password) < 4:
            raise forms.ValidationError("password is too short")
        return password
    """