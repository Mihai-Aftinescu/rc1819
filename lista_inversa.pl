% insertar_final(+E,+L,-R)
% es cierto si R unifica con una list aque tiene los elementos de L en el mismo orden que E insertado al final

 insertar_final(E, [], [E]). %% caso base

insertar_final(E, [C|Resto], [C|R] ):- insertar_final(E,Resto,R). %% llego al caso base para insertar E a R, y vuelvo en recursion


% reverse (L,R)
% es cierto si R unifica con una lista que
% contiene los elementos de L en orden inverso.


reverse([],[]).

reverse([Cabeza|Resto], R2) :- reverse(Resto,R), insertar_final(Cabeza,R,R2).


