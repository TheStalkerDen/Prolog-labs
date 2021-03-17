conc([],L,L).
conc([X|L1],L2,[X|L3]):-conc(L1,L2,L3).
add(X,L,[X|L]).
dup_el(X,1,[X]).
dup_el(X,N,L):- N > 1, N1 is N-1, dup_el(X,N1,L1), add(X,L1,L).
dups([],_,[]).
dups([X|T],N,Res):- dup_el(X,N,L1),dups(T,N,L2),conc(L1,L2,Res).
