from django.shortcuts import render,redirect
import nltk
nltk.download('punkt')
SENT_DETECTOR = nltk.data.load('tokenizers/punkt/english.pickle')
nltk.download('stopwords')
import random
from nltk.corpus import stopwords
nltk.download('wordnet')
from nltk.stem import WordNetLemmatizer
from nltk.corpus import wordnet
# Create your views here.
from projectadmin.models import chatbot_data
from user.models import userreg, chatmessage
from django.db.models import Q

def user_index(request):

    return render(request,'user/user_index.html')


def user_login(request):
    if request.method == "POST":
        uname = request.POST.get('uname')
        pswd = request.POST.get('password')
        try:
            check = userreg.objects.get(uname=uname, password=pswd)
            print(check)
            request.session['userid'] = check.id
            request.session['username'] = check.uname
            return redirect('user_home')
        except:
            pass
        return redirect('user_login')
    return render(request,'user/user_login.html')


def user_register(request):
    if request.method == "POST":
        name = request.POST.get('fname')
        email = request.POST.get('email')
        mobile = request.POST.get('mobile')

        location = request.POST.get('location')
        uname = request.POST.get('uname')
        password = request.POST.get('password')
        userreg.objects.create(name=name, email=email, mobile=mobile,
                               location=location, uname=uname, password=password)
        return redirect('user_login')
    return render(request, 'user/user_register.html')

def user_home(request):
    uid = request.session['userid']
    uname = request.session['username']
    aa = chatmessage.objects.filter(uid=uid)

    rmessage="..."
    message=''
    response1=''
    a=[]
    requestm=[]
    responsem=[]
    if request.method == "POST":
        message = request.POST.get('message')
        print(message)
        tokens = nltk.word_tokenize(message)
        print(tokens)
        en_stops = set(stopwords.words('english'))
        for word in tokens:
            if word not in en_stops:
               a.append(word)
        print(a)
        wnl = WordNetLemmatizer()
        list2 = nltk.word_tokenize(message)
        print(list2)


        lemmatized_string = ' '.join([wnl.lemmatize(words) for words in a])

        print(lemmatized_string)
        syn = list()
        ant = list()
        for synset in wordnet.synsets("fee"):
            for lemma in synset.lemmas():
                syn.append(lemma.name())  # add the synonyms
                if lemma.antonyms():  # When antonyms are available, add them into the list
                    ant.append(lemma.antonyms()[0].name())
        print('Synonyms: ' + str(syn))
        # cc=chatbot_data.objects.all()
        # for dd in cc:
        #     mes=dd.qrequest
        #     requestm.append(mes)
        #
        # for mm in cc:
        #     mesr=mm.qresponse
        #     responsem.append(mesr)
        #
        # for ww in lemmatized_string.split():
        #     if ww.lower() in requestm:
        #          qq=random.choice(responsem)
        #          print(qq)


        chatmessage.objects.create(uid=uid,uname=uname,sendermesage=message,rmessage=rmessage)
        bb = chatbot_data.objects.filter(Q(qrequest=message))

        for jj in bb:
            response1=jj.qresponse

        vv = chatmessage.objects.last()
        unid=vv.id
        print(unid)
        message1=vv.sendermesage
        print(message1)
        chatmessage.objects.filter(id=unid).update(rmessage=response1)


    return render(request, 'user/user_home.html',{'uname':uname,'chat':aa,'message':message,'response1':response1})


# def user_home1(request):
#     response1=''
#     uid = request.session['userid']
#     uname = request.session['username']
#
#
#     vv=chatmessage.objects.last()
#     unid=vv.id
#     print(unid)
#     message1=vv.sendermesage
#
#     print(message1)
#     bb=chatbot_data.objects.filter(qrequest=message1)
#     print(bb)
#     for jj in bb:
#         response1=jj.qresponse
#     print(response1)
#     chatmessage.objects.filter(id=unid).update(rmessage=response1)
#     aa = chatmessage.objects.filter(uid=uid)
#     return render(request, 'user/user_home1.html',{'uname':uname,'chat':aa,'response1':response1})