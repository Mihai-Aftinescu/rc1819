

% num_hojas_gen(+Arbol_gen, -Num)
% es cierto cuando Num unifica con el numero de hojas
% de Arbol_gen


num_hojas_gen(t(_,[]),1).
num_hojas_gen(t(_,Lista_hijos), R):-
	Lista_hijos \= [],
	num_hojas_gen(Lista_hijos, R).
	
		
	
num_hojas_gen([],0).
num_hojas_gen([Cab|Res], R):-
	num_hojas_gen(Cab,RCab),
	num_hojas_gen(Res,RRes),
	R is RCab + RRes.
	
	


tree_gen1( t(a,[t(b,[]),t(c,[]),t(d,[]),t(e,[])]) ).
tree_gen2( t(a,[t(b,[t(f,[]),t(g,[])]),t(c,[]),t(d,[]),t(e,[])]) ).