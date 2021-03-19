split(_,[],[],[]):-!.
split(M, [H|T],[H|L1],L2):- H < M, split(M,T,L1,L2),!.
split(M, [H|T],L1,[H|L2]):- H > M, split(M,T,L1,L2),!.
split(M, [H|T],L1,L2):- H =:= M, split(M,T,L1,L2),!.
