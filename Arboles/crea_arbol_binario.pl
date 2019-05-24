

% crea_arbol_binario(+ListaEtiquetadas, -ArbolBinario)
% es cierto cuando ArbolBinario unifica con un árbol binario
% que contiene todas las etiquetas de ListaEtiquetadas

crea_arbol_binario([], nil).


crea_arbol_binario([Cab|Res],a(Cab,RI,RD)):-
	length(Res,Lon),
	Mitad is Lon div 2,
	length(LD,Mitad),
	append(LI,LD,Res),
	crea_arbol_binario(LI,RI),
	crea_arbol_binario(LD,RD).