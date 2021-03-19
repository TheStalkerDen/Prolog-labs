all_num_factors(1,[1]):-!.
all_num_factors(N,[1|L]):- N > 1, find_factors(N,2,L),!.
find_factors(N,N,[N]).
%We find all D that gives N=D*A, where D and A are positive integers
find_factors(N,D,[D|L]):-
    D < N,
    N mod D =:= 0,
    Dn is D + 1, find_factors(N,Dn,L).
find_factors(N,D,L):-
    D < N,
    Dn is D + 1, find_factors(N,Dn,L).
