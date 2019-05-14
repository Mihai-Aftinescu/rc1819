
% num_nodos_gen(+Arbol_gen, -Num)
% es cierto cuando Num unifica con el número de nodos
% de Arbol_gen

% No esta puesto, pero al poner nodos gen otra vez parece
% que hay recursividad per ono la hay, prolog distingue si 
% el arbol o lista

num_nodos_gen(t(_,Lista_hijos), R):-
	num_nodos_lista(Lista_hijos, RL), R is RL + 1.
	

% num_nodos_gen(Lista_arboles, -Num)
% es cierto cuando Num unifica con el numero de nodos de la
% list ade aroboles genericos Lista_hijos

num_nodos_lista([], 0).

num_nodos_lista([Cab|Res], R):-
	num_nodos_gen(Cab, RCa),
	num_nodos_lista(Res,RRes),
	R is RCa + RRes.
	
	
	
tree_gen1( t(a,[t(b,[]),t(c,[]),t(d,[]),t(e,[])]) ).