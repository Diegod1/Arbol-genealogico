/*#declaracion de los hechos
#1ra Generacion
*/
mujer(florelia).
mujer(tatarabuela_david).
mujer(tatarabuela_cordoba).
mujer(tatarabuela_villota).
mujer(tatarabuela_rosero).
mujer(tatarabuela_pumalpa).
mujer(tatarabuela_galves).
mujer(tatarabuela_munoz).
mujer(tatarabuela_rosero2).
mujer(fidelina).
mujer(maria).
mujer(fidelina_pumalpa).
mujer(carlina).
mujer(marina).
mujer(ester).
mujer(nelly).
mujer(aracelly).
mujer(flor).
mujer(aimet).
mujer(stella).
mujer(janeth).
mujer(aida).
mujer(johana).
mujer(paola).
mujer(diana).
mujer(yuli).
mujer(carol).

%Diego es hijo de florelia
hijo_de([diego],florelia).
hijo_de([aida,johana],nelly).
hijo_de([carlos,fredy],flor).
hijo_de([max,stiven],aimet).

hijo_de([javier,andres],didimo).
hijo_de([juan_jose],stella).
hijo_de([juan_jose],luis_jr).
hijo_de([diana],hernan).
hijo_de([danilo,yuli],janeth).
hijo_de([german,mauricio],sigifredo).
hijo_de([sebastian,carol],mario).
/*#2da Generacion*/
hijo_de([florelia,nelly,aracelly,flor,aimet,didimo,stella],marina).
hijo_de([florelia,nelly,aracelly,flor,aimet,didimo,stella],abraham).

hijo_de([luis_jr,hernan,janeth,sigifredo,mario],luis_galves).
hijo_de([luis_jr,hernan,janeth,sigifredo,mario],ester).

/*3ra Generacion*/
hijo_de([marina],fidelina).
hijo_de([marina],adam).

hijo_de([abraham],maria).
hijo_de([abraham],reinaldo).

hijo_de([luis_galves],fidelina_pumalpa).
hijo_de([luis_galves],rafael).

hijo_de([ester],carlina).
hijo_de([ester],alvaro).

/*4 Generacion-5ta*/

hijo_de([fidelina],tatarabuelo_david).
hijo_de([fidelina],tatarabuela_david).

hijo_de([adam],tatarabuelo_cordoba).
hijo_de([adam],tatarabuela_cordoba).

hijo_de([maria],tatarabuelo_villota).
hijo_de([maria],tatarabuela_villota).

hijo_de([reinaldo],tatarabuelo_rosero).
hijo_de([reinaldo],tatarabuela_rosero).

hijo_de([fidelina_pumalpa],tatarabuelo_pumalpa).
hijo_de([fidelina_pumalpa],tatarabuela_pumalpa).

hijo_de([rafael],tatarabuelo_galves).
hijo_de([rafael],tatarabuela_galves).

hijo_de([carlina],tatarabuelo_munoz).
hijo_de([carlina],tatarabuela_munoz).

hijo_de([alvaro],tatarabuelo_rosero2).
hijo_de([alvaro],tatarabuela_rosero2).



/**/

/*base de conocimientos (Reglas)*/
%padre_de(Padre,Hijo):-hijo_de(Hijo,Padre).
padre_de(Padre,Hijo):-hijo_de(Hijos,Padre),member(Hijo,Hijos),not(mujer(Padre)).
madre_de(Madre,Hijo):-hijo_de(Hijos,Madre),member(Hijo,Hijos),mujer(Madre).


%hermanos
hermano_de(H1,H2):-(padre_de(X,H1),padre_de(X,H2));(madre_de(X,H1);madre_de(X,H2)).

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
















