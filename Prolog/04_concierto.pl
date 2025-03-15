%interpretantes
michael.
owen.
selena_gomez.

%canciones
thriller.
playa.
love.

%fans
alan.
fernando.
gladys.
daniel.
danner.

%interpreta
interpreta(michael,thriller).
interpreta(michael,love).
interpreta(owen,thriller).
interpreta(owen,playa).
interpreta(selena_gomez,thriller).
interpreta(selena_gomez,love).

%le_gusta
le_gusta(alan,playa).
le_gusta(alan,love).
le_gusta(fernando,thriller).
le_gusta(gladys,thriller).
le_gusta(gladys,playa).
le_gusta(daniel,thriller).
le_gusta(daniel,love).
le_gusta(danner,playa).
le_gusta(danner,love).

%esFan
esFan(Publico,Cantante):-interpreta(Cantante,Cancion),le_gusta(Publico,Cancion).

%mismoFandom
esFandom(Publico1,Publico2):-esFan(Publico1,Cantante),esFan(Publico2,Cantante),Publico1\=Publico2.

%colabora
colabora(Cantante1,Cantante2):-interpreta(Cantante1,Cancion),interpreta(Cantante2,Cancion),Cantante1\=Cantante2.