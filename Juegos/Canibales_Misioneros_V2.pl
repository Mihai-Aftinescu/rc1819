

% Problemas de Estados

% Misioneros y Canibales


% 1. Estados
% estado(MisionerosDch, CanibalesDch, SituacionBote)

% 2. Movimiento
%
mov(pasar(M,C,izquierda), estado(MD,CD,derecha), estado(MDN,CDN,izquierda)):-
	pasar(M,C),
	M =< MD, C =< CD,
	MDN is MD - M, CDN is CD - C,
	\+ no_valido(estado(MDN, CDN, _)).
	
	

mov(pasar(M,C,derecha), estado(MD,CD,izquierda), estado(MDN,CDN,derecha)):-
	pasar(M,C),
	MI is 3 - MD, CI  is 3 - CD,
	M =< MI, C =< CI,
	MDN is MD + M, CDN is CD + C,
	\+ no_valido(estado(MDN, CDN, _)).
	
	
	
% pasar(Misioneros, Canibales).

pasar(2,0).
pasar(0,2).
pasar(1,1).
pasar(1,0).
pasar(0,1).



% no_valido(estado(MisionerosDch,CanibalesDch,SituacionBote));

no_valido(estado(2,3,_)).
no_valido(estado(1,3,_)).
no_valido(estado(1,2,_)).

no_valido(estado(1,0,_)).
no_valido(estado(2,0,_)).
no_valido(estado(2,1,_)).


% camino(+EstadoIni, +EstadoFin, +Visitados, -Camino)
% es cierto cuando Cambio unifica con la lista de
% movimientos necesarios para ir del EstadoIni al EstadoFin
% sin repeticion de los estados visitados

camino(Ini,Ini,_, []).

camino(Ini,Fin,Visitados, [pasar(M,C,Direccion)|Camino]):- 
	mov(pasar(M,C,Direccion),Ini, Temp),
	\+ member(Temp,Visitados),
	camino(Temp,Fin,[Temp|Visitados],Camino).
	
