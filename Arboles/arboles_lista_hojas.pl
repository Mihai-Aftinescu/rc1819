


% leaves (+Tree, -List).
% it is true if List unify with the labels
% in leaves of Tree.


leaves(nil,[]).
leaves(t(L,nil,nil),[L]).

leaves(t(_,L,R), RT):-
	L \= nil, R \= nil,
	leaves(L, RL),
	leaves(R,RR),
	append(RL,RR,RT).
	
	
leaves(t(_,L,nil), RL):-
	L \= nil,
	leaves(L,RL).
	
leaves(t(_,nil,R), RR):-
	R \= nil,
	leaves(R,RR).
	
	
tree1(t(9,t(5,t(2,nil,nil),t(6,nil,nil)),t(12,t(10,nil,nil),t(14,nil,nil)))).