from django.db import models

# Create your models here.
class Student(models.Model):
    roll_no = models.TextField()
    name = models.TextField(max_length = 40)
    stud_class = models.TextField()
    department = models.TextField()

class Teacher(models.Model):
    name = models.TextField(max_length = 40)
    department = models.TextField()