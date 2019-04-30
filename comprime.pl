

% comprime(+Lista, -Resultado)
%
%
% comprime([1,1,1,2,2,3,4,4,4], R).
% R =  [(1,3), (2,2), (3,1), (4,3) ]
%
% Tupla
% ('Jose', 21, '1,60')



comprime([],[]).
comprime([E], [(E,1)]).

% Si pongo [Cab,Cab|Res] estoy diciento que Elemento 1 y Elemento 2 tienen que ser iguales 
% Y en la de la der tengo que poner [Cab,Res] poruqe si no quitaria 2 

comprime([Cab,Cab|Res],[(E,N2)|R] ):-
		comprime([Cab|Res],[(E,N)|R]), N2 is N + 1.

comprime([Cab1,Cab2|Res], [(Cab1,1)|R]):- 
			Cab1 \= Cab2, 
			comprime([Cab2|Res],R).


% Ejemplo para ver el primer caso, cab iguales
% [1,1,1,2,2,3,4,4] -> [(1,3), (2,2), (3,1), (4,2)]
% [1,1,2,2,3,4,4] -> [(1,2), (2,2), (3,1), (4,2)]

% Ejemplo para ver el primer caso, cab diferentes
% [0,1,1,1,2,2,3,4,4] -> [(0,1),(1,3), (2,2), (3,1), (4,2)]
% [1,1,1,2,2,3,4,4] -> [(1,3), (2,2), (3,1), (4,2)]









% mayor(+Lista, -Tupla)
% Es cierto si Tupla unica con la  tupla (E,N) de mayor N
%  de la lista Lista  en formato: [(1,3), (2,2), (3,1), (4,2)]
% donde el primer valor es el elemento y el segundo el numero
% de veces que se repite




mayor([(E,N)],(E,N)).
mayor([(_,NCab)|Res],(E,N)):- mayor(Res, (E,N)), N > NCab.
mayor([(ECab,NCab)|Res],(ECab,NCab)):- mayor(Res, (_,N)), N =< NCab.


% El que se repite mas veces y cuanto
masveces(L, E, N):- msort(L, L2), comprime(L2, R), mayor(R. (E,N)).




masveces2([],[]).
masveces2( [E], [(E,1)] ).
masveces2([Cab|Res], (H,N2) ):- masveces2(T, R), member((H, N) R), N2 is N + 1.
masveces2([Cab|Res], (E, N)):- masveces2(T, R), \+ member( (H,N), [(E,N)|R] ).














