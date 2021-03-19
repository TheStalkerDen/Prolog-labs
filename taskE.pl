nth_in_list(1,[X|_],X):-!.
nth_in_list(N,[_|T],X):-
    N > 1,
    N1 is N - 1,
    nth_in_list(N1,T,X).
