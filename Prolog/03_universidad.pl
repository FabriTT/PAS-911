%estudiantes
daniel_perez.
jessy_james.
gael_agreda.
milton_gomez.
selena_gomez.

%materias
desarrollo_de_software.
bases_de_datos. 
ingenieria_de_software.

%docentes
mario_gomez.
juana_peralta.
andrea_jemio.
julian_apaza.
gabriel_andrade.

%Es_estudiante
esEstudiante(daniel_perez).
esEstudiante(jessy_james).
esEstudiante(gael_agreda).
esEstudiante(milton_gomez).
esEstudiante(selena_gomez).

%Es_materia
esMateria(desarrollo_de_software).
esMateria(bases_de_datos).
esMateria(ingenieria_de_software).

%Es_docente
esDocente(mario_gomez).
esDocente(juana_peralta).
esDocente(andrea_jemio).
esDocente(julian_apaza).
esDocente(gabriel_andrade).

%Asiste
asiste(daniel_perez,desarrollo_de_software).
asiste(daniel_perez,bases_de_datos).

asiste(jessy_james,desarrollo_de_software).
asiste(jessy_james,bases_de_datos).
asiste(jessy_james,ingenieria_de_software).

asiste(gael_agreda,desarrollo_de_software).
asiste(gael_agreda,bases_de_datos).

asiste(milton_gomez,desarrollo_de_software).
asiste(milton_gomez,ingenieria_de_software).

asiste(selena_gomez,desarrollo_de_software).
asiste(selena_gomez,bases_de_datos).
asiste(selena_gomez,ingenieria_de_software).

%Imparte
imparte(mario_gomez,desarrollo_de_software).
imparte(mario_gomez,ingenieria_de_software).

imparte(juana_peralta,desarrollo_de_software).
imparte(juana_peralta,bases_de_datos).

imparte(andrea_jemio,desarrollo_de_software).
imparte(andrea_jemio,bases_de_datos).
imparte(andrea_jemio,ingenieria_de_software).

imparte(julian_apaza,bases_de_datos).

imparte(gabriel_andrade,desarrollo_de_software).
imparte(gabriel_andrade,bases_de_datos).
imparte(gabriel_andrade,ingenieria_de_software).

%Colega
colega(Docente1,Docente2):-esDocente(Docente1),esDocente(Docente2),Docente1\=Docente2. 

%Ensenia
ensenia(Docente,Estudiante):-esDocente(Docente),esEstudiante(Estudiante),imparte(Docente,Materia),asiste(Estudiante,Materia).

%Companiero
companiero(Estudiante1,Estudiante2):-esEstudiante(Estudiante1),esEstudiante(Estudiante2),asiste(Estudiante1,Materia),asiste(Estudiante2,Materia).