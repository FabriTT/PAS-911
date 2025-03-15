%familiares
'A'.
'B'.
'C'.
'D'.
'E'.
'F'.
'G'.
'H'.
'I'.
'J'.
'K'.
'L'.
'M'.
'N'.
'O'.
'P'.
'Q'.
'R'.

%padres
esPadre('A','B').
esPadre('A','C').
esPadre('B','D').
esPadre('B','E').
esPadre('B','F').
esPadre('C','G').
esPadre('C','H').
esPadre('C','I').
esPadre('D','J').
esPadre('E','K').
esPadre('K','O').
esPadre('K','P').
esPadre('G','L').
esPadre('H','M').
esPadre('I','N').
esPadre('M','Q').
esPadre('M','R').

%reglas
esAscendiente(X, Y):- esPadre(X, Y).  
esAscendiente(X, Y):- esPadre(X, Z),esAscendiente(Z, Y).

esDescendiente(Y, X):- esPadre(X, Y).  
esDescendiente(Y, X):- esPadre(Z, Y),esDescendiente(Z, X).

esHermano(X,Y):- esPadre(Z,X),esPadre(Z,Y),X\=Y. 

esPrimo(X,Y):- esPadre(Z,X),esPadre(U,Y),esHermano(Z,U),X\=Y. 