
% es cierto si X unifica con una lista con todos los elementos de la Lista
% Lista es una lista formada por Listas.

% my_flatten([a,[b,[c,d],e,]], X).
% X = [a,b,c,d,e].

my_flatten([],[]).

my_flatten([Cab|Res], R3):- is_list(Cab),
			my_flatten(Res, R2), my_flatten(Res, R),
			append(R2, R, R3).
			
			
my_flatten([Cab|Res], [Cab|R]):-  \+ is_list(Cab),
			my_flatten(Res,R).
	