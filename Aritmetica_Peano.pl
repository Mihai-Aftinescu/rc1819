

% Aritmética de Peano
%
%
% suma(?X, ?Y, ?Z)
% ES cierto si Z unifica con la suma
% de X e Y en aritmética de Peano



suma(0,Y, Y).

suma(n(X),Y,n(Z)):- suma(X,Y,Z). 


% resta(?X, ?Y, ?Z)
% Es cierto si Z unifica con X - Y

resta(X,0,X).

resta(X,n(Y), Z):- resta(X, Y, n(Z)).


% producto(?X, ?Y, ?Z)
% Es cierto si Z es unifica con un número
% en aritmética de Peano resultado de 
% sumar X veces el número Y.

producto(0, _, 0).

producto(n(X), Y, Z2 ):- 
		producto(X, Y, 	Z),
		suma(Z,Y,Z2).
		

% p2d(+P, -D)
% Es cierto si D unifica con el
% Número decimal equivalente a su
% representación en aritmética de Peano

p2d(0,0).

p2d(n(X), R):- p2d(X, D), R is D + 1;


% d2p(+D, - P)
% Es cierto si P unifica con el
% El numero en aritmética de Peano
% representación equivalente a su

d2p(X, n(P)):- X2 is X - 1, d2p(X2,P).