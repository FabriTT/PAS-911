%enLista(juan,[andres,maria,pedro,juan])


%enLista(Elemento, [Cabeza, Cola])

enLista(Elemento, [Cabeza | _]):- Elemento == Cabeza.
enLista(Elemento, [_ | Cola]):- enLista(Elemento,Cola).


