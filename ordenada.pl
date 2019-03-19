

% ord_burbuja(+Lista, -R)
% es cierto si R unifica con una lista que contiene
% los elementos de List ordenados de menor a mayor
% Lista puede contener elementos repetidos


% ordenada(+Lista)
% es cierto si los elementos de Lista están ordenados de
% menor a mayor

ordenada([]).
ordenada([_]).
% ordenada(Lista):- append(L1, [E1, E2|L2), Lista), E1 =< E2.
ordenada([E1, E2|Resto]):- E1 =< E2, ordenada([E2|Resto]).



ord_burbuja([Cabeza|Resto], ordenada([Cabeza|R)):-ord_burbuja(Resto,R).