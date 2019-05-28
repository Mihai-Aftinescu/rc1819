%% Camino grafo no dir
% Grafo 1
grafo1(g([a,b,c,d], [a(a,b), a(b,c), a(c,a), a(c,d), a(d,a)])).

grafo2(g([madrid, cordoba, sevilla, jaen, granada,
huelva, cadiz],
 [a(huelva, sevilla, a49, 94),
 a(sevilla, cadiz,ap4, 125),
 a(sevilla, granada, a92, 256),
 a(granada, jaen,a44, 97),
 a(sevilla, cordoba, a4, 138),
 a(jaen,madrid, a4, 335),
 a(cordoba, madrid, a4, 400)]
)).

% conectado(Grafo, Ini, Fin)
% es cierto si el vértice Ini está conectado mediante una arista
% con el vertice Fin en Grafo

conectado(g(_,A), Ini, Fin,Nom,Dist) :- member(a(Ini,Fin,Nom,Dist),A).
conectado(g(_,A), Ini, Fin,Nom,Dist) :- member(a(Fin,Ini,Nom,Dist),A). %% Pa hacerlo no dir

% camino(+Grafo, +Ini, +Fin, +Visitados, -Camino, -Peso)
% es cierto si Camino unifica con el camino representado
% como vértices/arista que va desde
% inicio hasta Fin sin repetir vértices/aristas y con 
% un coste total de Peso


% Camino como lista de aristas y visitados como lista de vértices
camino(_, Ini, Ini, _, [] , 0).


camino(G, Ini, Fin, Visitados, [a(Ini,Tmp,Nom,Dist)|Camino],PesoTotal):-
	conectado(G,Ini,Tmp,Nom,Dist),
	\+ member(Tmp, Visitados),
	camino(G, Tmp, Fin,[Tmp|Visitados] ,Camino,Peso),
	PesoTotal is Peso + Dist.
