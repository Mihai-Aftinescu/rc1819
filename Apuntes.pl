
12 03 2019

2 = 1 + 1. --> FALSE // El simbolo = no hace operaciones aritmeticas, solo compara
(1 + 1) = 1 + 1 --> TRUE // Si el contenido de los parentesis no cambia con respecto al resultado lo toma cmop verdadero
1 + 1 + 1 = (1 + 1) + 1 --> TRUE
1 + 1 + 1 = 1 + (1 + 1) --> FALSE // En este caso cambia la estructura

+(1,1) = 1 + 1 --> TRUE // Es valido poner el operando en prefijo


** El ámbito de una variable solo es válida hasta que finalice el "." . Operar con ella en esa línea, separar por "," para 
indicar más de una acción 	




== --> Si la variable ya esta definida si le asigna un valor
	-> X = 1 + 1, 1 + 1 == X. --> X = 1 + 1
	-> X == 1 + 1. --> FALSE



Comando help --> apropos( )


Listas:
	[Cabeza|Resto] = [1,2,3,4].
		Cabeza unifica con el primer elemento. Si el primer elemento es una lista dentro de la lista -->  [Cabeza|Resto] = [[1,2,3,4]].
																											Cabeza = [1,2,3,4].
																											Resto = [].
	Resto unifica con el resto de la lista, aunque esté vacia, SIEMPRE ES UNA LISTA
	Ignorar la cabeza --> [_|Resto] = [1,2,3,4]. 	// Tambien se puede ignorar de igual manera el resto
							Resto = [2,3,4].
	Puede haber varias cabezas





Recursividad -- Principio de Inducción

Sea P una propiedad que quiero probar para  todo elemento de un conjunto S.	S es ordenable y existe un primer elemento n0.
	1. P(n0) es cierto
	2. Vn > n0. €
		P(n-1) -> P(n)
			