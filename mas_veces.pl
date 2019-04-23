

%------------------------------------------------------
% mas_veces(+Lista, -Elem, -Num)
%es cierto cuando Elem unifica con el elemento
%que se repite más veces en la lista Lista
%y Num unifica con el número de veces que se
%repite dicho elemento.
%------------------------------------------------------




mas_veces([],_,0).
mas_veces([Ca|Co],E,N2):- mas_veces(Co,E1,N), contar([Ca|Co],E,N),  N2 > N.



contar([],_,0).
contar([Ca|Co], E, N2):-
  contar(Co,E,N),
  Ca=E,
  N2 is N+1.
  
contar([Ca|Co], El, N):-
  contar(Co,El,N),
  Ca\=El.
  
  
  
