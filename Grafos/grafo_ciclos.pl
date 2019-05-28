
%% Ciclos en un grafo
% Grafo 1
grafo1(g([a,b,c,d], [a(a,b), a(b,c), a(c,a), a(c,d), a(d,a)])).

% conectado(Grafo, Ini, Fin)
% es cierto si el vértice Ini está conectado mediante una arista
% con el vertice Fin en Grafo

conectado(g(_,A), Ini, Fin) :- member(a(Ini,Fin),A).

% camino(+Grafo, +Ini, +Fin, +Visitados, -Camino, -Peso)
% es cierto si Camino unifica con el camino representado
% como vértices/arista que va desde
% inicio hasta Fin sin repetir vértices/aristas y con 
% un coste total de Peso


% Camino como lista de vértices y visitados como lista de aristas
camino(g(_,A), Ini, Fin, _ , [Ini,Fin]):- member(a(Ini,Fin),A).

camino(G, Ini, Fin, Visitados, [Ini|Camino]):-
	conectado(G,Ini,Tmp),
	\+ member(a(Ini,Tmp), Visitados),
	camino(G, Tmp, Fin,[a(Ini,Tmp)|Visitados] ,Camino).
	
	
ciclos(g(V,A), R):- member(Vertice, V),
	% camino(g(V,A), Vertice, Vertice, [], R).
	bagof(Ciclo, camino(g(V,A), Vertice, Vertice, [], Ciclo), R).
	
ciclo(g(V,A), R):- member(Vertice, V), camino(g(V,A), Vertice, Vertice, [], R).
	
	
	
