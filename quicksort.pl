
% quicksort(+Lista, -R)
% es cierto cuando R unifica con una lista
% que contiene los elementos de L con E
% insertado en su posición correcta.
% L puede tener elementos repetidos y L está ordenada

quicksort([],[]).
quicksort([Ca|Res],R ):- 
	dividir(Ca, Res, Me, Ma),
	quicksort(Me, RMe),
	quicksort(Ma, RMa),
	append(RMe, [Ca|RMa], R).





% dividir(+P, +Lista, -Menores, -Mayores)
% es cierto cuando Menores unifica con los elementos
% de Lista que son menores o iguales que P y Mayores
% unifica con los elementos de Lista que son mayores que P



dividir(P,[],[],[]).

dividir(P,[Ca|Res],[Ca|Me],Ma):- P >= Ca, dividir(P,Res,Me,Ma).
dividir(P,[Ca|Res],Me,[Ca|Ma]):- P < Ca, dividir(P,Res,Me,Ma).