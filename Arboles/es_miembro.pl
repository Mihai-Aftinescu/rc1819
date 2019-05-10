
% member(+Tree, +Element).
% it is true if Element is a label inside tree.




member(t(L,_,_),L).

member(t(_,L,_),E):- member(L,E).

member(t(_,_,R),E):- member(R,E).
	
	

	


tree1(t(9,t(5,t(2,nil,nil),t(6,nil,nil)),t(12,t(10,nil,nil),t(14,nil,nil)))).