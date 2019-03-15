% elemento_enesimo(+Pos,+ Lista, -Elem)
% que es cierto cuando Elem unifica con el elemento que ocupa las posicon pos dentro de la lista


elemento_enesimo(1,[A|_],A);

elemento_enesimo(Pos,[Cabeza|Resto],Elem) :- Pos > 1, Pos2 is Pos -1, elemento_enesimo(Pos2 ,Resto, Elem).

