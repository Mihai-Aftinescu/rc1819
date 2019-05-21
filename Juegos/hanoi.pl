
% Hanoi
%
%     
% hanoi(+NumeroDiscos, +X, +Y, +Z, -ListaMov).
% es cierto cuando ListaMov unifica con la lista de movimientos
% necesarios para pasar NumeroDiscos de la torre A hasta la torre
% utilizando la torre B como auxliliar.

hanoi(1, X,_,Z, [pasar(1,X,Z)]).

hanoi(N,X,Y,Z, R2):-
	N2 is N-1,
	
	hanoi(N2,X,Z,Y,M1),
	hanoi(1,X,Y,Z,M2),
	hanoi(N2,Y,Z,X,M3),
	append(M1,M2,R),
	append(R,M3,R2).