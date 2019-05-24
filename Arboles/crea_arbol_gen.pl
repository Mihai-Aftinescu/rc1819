
% crea_arbol_gen(+ListaEtiquetas, -ArbolGen)
% es cierto cuando ArbolGen unifica con un árbol génerico
% que contiene las etiquetas de ListaEtiquetas


crea_arbol_gen([],a(_, [])).

crea_arbol_gen([Cab|Res], a(E,[a(Cab,[])|L])):-  crea_arbol_gen(Res,a(E,L)).