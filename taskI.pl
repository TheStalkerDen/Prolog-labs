my_member(X, [X|_]):-!.
my_member(X, [_|T]):- my_member(X,T).
my_intersection([],_,[]):-!.
my_intersection([X|T],L2,[X|L]):- my_member(X,L2),my_intersection(T,L2,L),!.
my_intersection([_|T],L2,L):-my_intersection(T,L2,L),!.
