/*#declaracion de los hechos
#1ra Generacion
*/
tiene_genero(mujer,[tatarabuela_david,tatarabuela_cordoba,tatarabuela_villota,tatarabuela_rosero,tatarabuela_pumalpa,tatarabuela_galves,tatarabuela_munoz,tatarabuela_rosero2,fidelina,maria,fidelina_pumalpa,carlina,marina,ester,florelia,nelly,aracelly,flor,aimet,stella,janeth,aida,johana,paola,diana,yuli,carol]).
tiene_genero(hombre,[tatarabuelo_david,tatarabuelo_cordoba,tatarabuelo_villota,tatarabuelo_rosero,tatarabuelo_pumalpa,tatarabuelo_galves,tatarabuelo_munoz,tatarabuela_rosero2,adam,reinaldo,rafael,alvaro,abraham,luis_galves,didimo,luis_jr,hernan,sigifredo,mario,diego,fredy,carlos,stiven,max,andres,javier,juan_jose,danilo,german,mauricio,sebastian]).
%hijos de florelia
hijo_de([diego],florelia).
hijo_de([aida,johana],nelly).
hijo_de(paola,aracelly).
hijo_de([carlos,fredy],flor).
hijo_de([max,stiven],aimet).
hijo_de([javier,andres],didimo).
hijo_de(juan_jose,stella).
hijo_de(juan_jose,luis_jr).
hijo_de(diana,hernan).
hijo_de([danilo,yulli],janeth).
hijo_de([german,mauricio],sigifredo).
hijo_de([carol,sebastian],mario).

/*#2da Generacion*/
hijo_de([florelia,nelly,aracelly,flor,aimet,didimo,stella],marina).
hijo_de([florelia,nelly,aracelly,flor,aimet,didimo,stella],abraham).


hijo_de([luis_jr,hernan,janeth,sigifredo,mario],luis_galves).
hijo_de([luis_jr,hernan,janeth,sigifredo,mario],ester).


/*3ra Generacion*/
hijo_de(marina,fidelina).
hijo_de(marina,adam).

hijo_de(abraham,maria).
hijo_de(abraham,reinaldo).

hijo_de(luis_galves,fidelina_pumalpa).
hijo_de(luis_galves,rafael).

hijo_de(ester,carlina).
hijo_de(ester,alvaro).

/*4 Generacion-5ta*/

hijo_de(fidelina,tatarabuelo_david).
hijo_de(fidelina,tatarabuela_david).

hijo_de(adam,tatarabuelo_cordoba).
hijo_de(adam,tatarabuela_cordoba).

hijo_de(maria,tatarabuelo_villota).
hijo_de(maria,tatarabuela_villota).

hijo_de(reinaldo,tatarabuelo_rosero).
hijo_de(reinaldo,tatarabuela_rosero).

hijo_de(fidelina_pumalpa,tatarabuelo_pumalpa).
hijo_de(fidelina_pumalpa,tatarabuela_pumalpa).

hijo_de(rafael,tatarabuelo_galves).
hijo_de(rafael,tatarabuela_galves).

hijo_de(carlina,tatarabuelo_munoz).
hijo_de(carlina,tatarabuela_munoz).

hijo_de(alvaro,tatarabuelo_rosero2).
hijo_de(alvaro,tatarabuela_rosero2).



/**/

/*base de conocimientos (Reglas)*/
padre_de(Padre,Hijo):-hijo_de(Hijo,Padre).
mama_de(X,Y):- tiene_genero(mujer,X),hijo_de(Y,X).
papa_de(X,Y):- tiene_genero(hombre,X),hijo_de(Y,X).


%hermanos
hermano_de(H1,H2):-padre_de(X,H1),padre_de(X,H2),H1\==H2.

%tios(Hermanos de los padres) X es padre de S Y X es hermano de T
tio_de(T,S):-padre_de(X,S),hermano_de(X,T).

%sobrinos(hijos de mi hermano)

sobrino_de(S,T):-hermano_de(T,X),hijo_de(S,X).

%primos(hijos de mis tios)

primo_de(P1,P2):-padre_de(X,P1),tio_de(X,P2).


%ancestros funcion recursiva

%funcion para romper la recursividad
ancestro_de(A,J):-(padre_de(A,J)).
ancestro_de(A,J):-padre_de(A,Z),ancestro_de(Z,J).
