tea.
noelia.
juana.
jessy.
wanda.
celeste.
mariana.
andy.

rodmi.
elmer.
eguivar.
felix.
sebastian.
christian.
chema.
joe.
arty.

% si_es_hombre
es_hombre(rodmi).
es_hombre(elmer).
es_hombre(eguivar).
es_hombre(felix).
es_hombre(sebastian).
es_hombre(christian).
es_hombre(chema).
es_hombre(joe).
es_hombre(arty).

% si_es_mujer
es_mujer(tea).
es_mujer(noelia).
es_mujer(juana).
es_mujer(jessy).
es_mujer(wanda).
es_mujer(celeste).
es_mujer(mariana).
es_mujer(andy).


% si_es_pareja
es_pareja_de(rodmi,tea).
es_pareja_de(tea,rodmi).

es_pareja_de(noelia,elmer).
es_pareja_de(elmer,noelia).

es_pareja_de(eguivar,juana).
es_pareja_de(juana,eguivar).

es_pareja_de(felix,jessy).
es_pareja_de(jessy,felix).

es_pareja_de(sebastian,wanda).
es_pareja_de(wanda,sebastian).

es_pareja_de(christian,celeste).
es_pareja_de(celeste,christian).

es_pareja_de(chema,mariana).
es_pareja_de(mariana,chema).

% descendiente_directo
es_descendiente_de(sebastian,rodmi).
es_descendiente_de(sebastian,tea).

es_descendiente_de(wanda,noelia).
es_descendiente_de(wanda,elmer).

es_descendiente_de(christian,eguivar).
es_descendiente_de(christian,juana).

es_descendiente_de(celeste,felix).
es_descendiente_de(celeste,jessy).

es_descendiente_de(chema,sebastian).
es_descendiente_de(chema,wanda).

es_descendiente_de(mariana,christian).
es_descendiente_de(mariana,celeste).

es_descendiente_de(joe,chema).
es_descendiente_de(joe,mariana).

es_descendiente_de(arty,chema).
es_descendiente_de(arty,mariana).

es_descendiente_de(andy,chema).
es_descendiente_de(andy,mariana).

% hermano_hermana
hermano_de(joe,arty).
hermano_de(joe,andy).
hermano_de(arty,joe).
hermano_de(arty,andy).

hermana_de(andy,joe).
hermana_de(andy,arty).

% es esposo de
es_esposo_de(X,Y):-es_hombre(X),es_pareja_de(X,Y).

% es esposa de
es_esposa_de(X,Y):-es_mujer(X),es_pareja_de(X,Y).

% es abuelo de
es_abuelo_de(X,Y):-es_hombre(X),es_descendiente_de(Z,X),es_descendiente_de(Y,Z).

% es abuela de
es_abuela_de(X,Y):-es_mujer(X),es_descendiente_de(Z,X),es_descendiente_de(Y,Z).


% es nieto de
es_nieto_de(X,Y):-es_hombre(X),es_descendiente_de(X,Z),es_descendiente_de(Z,Y).

% es nieto de
es_nieta_de(X,Y):-es_mujer(X),es_descendiente_de(X,Z),es_descendiente_de(Z,Y).





