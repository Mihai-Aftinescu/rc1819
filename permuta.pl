
%% permutar(+Lista, -ListaR)
% es cierto cuando ListaR unifica con una lista
% que contiene los elementos de Lista en orden 
% distintos. Este predicado puede generar todas
% las listas posibles.


permuta([],[]).

permuta([Cabeza|Resto],LR):- permuta(Resto,R), insertar_todas(Cabeza,R,LR).



% insertar_todas(+E, +Lista, -R)
% es cierto si R unifica con una lista que contiene
% los elementos de Lista con E insertado en cualquier posicion




insertar_todas(E,[],[E]).
insertar_todas(E,[Cabeza|Resto], [E, Cabeza|Resto]).

insertar_todas(E,[Cabeza|Resto],[Cabeza|R]):- insertar_todas(E,Resto, R).
	
		