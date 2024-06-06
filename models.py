from django.db import models

# Create your models here.
class userreg(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=300)
    email = models.CharField(max_length=300)
    mobile = models.CharField(max_length=300)
    location = models.CharField(max_length=300)
    uname = models.CharField(max_length=300)
    password = models.CharField(max_length=300)

class chatmessage(models.Model):
    id = models.AutoField(primary_key=True)
    uid = models.CharField(max_length=300)
    uname = models.CharField(max_length=300)
    sendermesage = models.CharField(max_length=300)
    rmessage = models.CharField(max_length=300)
