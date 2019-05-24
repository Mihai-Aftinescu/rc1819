
% balanceado(+ArbolBinario)
% es cierto si ArbolBinario es balanceado, es decir,
% para todo nodo la diferencia de altura entre su hijo
% izquierto y su hijo derecho es maximo 1

balanceado(nil).

balanceado(a(_,L,R):- 
	altura(L,AL),
	altura(R,AR),
	D is abs(AL - AR),
	D =< 1,
	balanceado(L),
	balanceado(R).







% altura(+ArbolBinario, -A)
% es cierto si A unifica con la altura de ArbolBinario

altura(nil,0).

altura(a(_,L,R), AT):-
	altura(L,AL),
	altura(R,AR),
	A is max(AL,AR),
	AT is A + 1.