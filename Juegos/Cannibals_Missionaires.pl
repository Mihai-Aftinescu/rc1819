

% Cannibals and Missionaires Game

% 1. State Representation
% state(+MissionairesRight, +CannibalsRight, +BoatSide)


% Initial State
state(3,3,right).

% Final State
state(0,0,_).


% 2. Movements

mov( move(M,C, left), state(MR,CR), state()):-
	T is M + C, T =< 2, T >= 1, % max 2 people in boat and 1 min
	M =< MR, C =< CR, % move if we have people
	CR =< MR, % no more cannibals than missionaires in right
	ML is 3 - MR, CL is 3 - CR, % people to the left
	NML is ML + M, NCL is CL + C, % 
 	NCL =< NML, % no more cannibals after movement to the left
	NMR is MR - M, NCR is CR - C % new people to the right 
	NCR =< NMR. % no more cannibals after movement to right