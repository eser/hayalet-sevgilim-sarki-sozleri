from django.shortcuts import render

# Create your views here.


def index(request):
    lyrics = []
    f = open("hayal_et_lyrics.txt", "r", encoding="utf8")
    for x in f:
        lyrics.append(x)  
    return render(request, 'index.html', {'lyrics': lyrics})
