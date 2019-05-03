% eliminaCadaN(+N, +Lista, -ListaR)
%
% es cierto cuando ListaR unifica con
% una lista que contiene los elementos de Lista
% eliminando los que aparecen cada N posiciones
%
% eliminaCadaN(3, [1,2,3,4,5,6,7], R)
% R = [1,2,4,5,7]


eliminaCadaN(_,[],[]).

eliminaCadaN(N,[Cab|Res],R  ):-
		eliminaCadaN(N,Res,R).
		
		
		
		
% quitarN(N,+Lista,-ListaR)


quitarN(N,[Cab|Res], R):- quitarN(N2,Res, R) N2 is N - 1.