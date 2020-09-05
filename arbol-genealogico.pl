/*#declaracion de los hechos
#1ra Generacion
*/
%Diego es hijo de florelia
hijo_de(diego,florelia).
hijo_de(aida,nelly).
hijo_de(johana,nelly).
hijo_de(paola,aracelly).
hijo_de(carlos,flor).
hijo_de(fredy,flor).
hijo_de(max,aimet).
hijo_de(stiven,aimet).
hijo_de(javier,didimo).
hijo_de(andres,didimo).
hijo_de(juan_jose,stella).
hijo_de(juan_jose,luis_jr).
hijo_de(diana,hernan).
hijo_de(danilo,janeth).
hijo_de(yuli,janeth).
hijo_de(german,sigifredo).
hijo_de(mauricio,sigifredo).
hijo_de(carol,mario).
hijo_de(sebastian,mario).

/*#2da Generacion*/
hijo_de(florelia,marina).
hijo_de(nelly,marina).
hijo_de(aracelly,marina).
hijo_de(flor,marina).
hijo_de(aimet,marina).
hijo_de(didimo,marina).
hijo_de(stella,marina).

hijo_de(florelia,abraham).
hijo_de(nelly,abraham).
hijo_de(aracelly,abraham).
hijo_de(flor,abraham).
hijo_de(aimet,abraham).
hijo_de(didimo,abraham).
hijo_de(stella,abraham).

hijo_de(luis_jr,luis_galves).
hijo_de(hernan,luis_galves).
hijo_de(janeth,luis_galves).
hijo_de(sigifredo,luis_galves).
hijo_de(mario,luis_galves).

hijo_de(luis_jr,ester).
hijo_de(hernan,ester).
hijo_de(janeth,ester).
hijo_de(sigifredo,ester).
hijo_de(mario,ester).

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

hijo_de(carlina,tatarabuelo_muñoz).
hijo_de(carlina,tatarabuela_muñoz).

hijo_de(alvaro,tatarabuelo_rosero2).
hijo_de(alvaro,tatarabuela_rosero2).



/**/

/*base de conocimientos (Reglas)*/
padre_de(Padre,Hijo):-hijo_de(Hijo,Padre).



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











