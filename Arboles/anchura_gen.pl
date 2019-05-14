% anchura_gen(Arbol_gen, -Lista)
% es cierto cuando Lista unifica con las
% etiquetas de Arbol_gen recorriendo el
% arbol en anchura.
% EJERCICIO EXAMEN -----------------------------------------
anchura_gen(t(E,L),[E|R):- anchura_gen(L,R).
	
	
% anchura_gen(+Lista_Arboles, -Lista)
% es cierto cuando Lista unifica con las etiquetas
% de los arboles de Lista_Arboles recorridos
% en anchura.

anchura_gen([],[]).
anchura_gen([t(E,L)|Resto], [E|RT]):-
	append(Resto,L,R),
	anchura_gen(R, RT).


tree_gen1( t(a,[t(b,[]),t(c,[]),t(d,[]),t(e,[])]) ).
tree_gen2( t(a,[t(b,[t(f,[]),t(g,[])]),t(c,[]),t(d,[]),t(e,[])]) ).