has_factors(X,N):-
    N*N =< X,
    X mod N =:= 0,!.
has_factors(X,N):-
    N2 is N + 1,
    N2*N2 =< X,
    has_factors(X,N2),!.

is_prime(2):-!.
is_prime(X):- X > 2, not(has_factors(X,3)),!.

goldbach_help(_,X1,X2,X1Res,X2Res):-
    is_prime(X1),
    is_prime(X2),
    X1Res is X1,
    X2Res is X2,
    !.
goldbach_help(Y,X1,X2,X1Res,X2Res):-
    X1N is X1 - 2,
    X2N is X2 + 2,
    X1N >= X2N,
    goldbach_help(Y,X1N,X2N,X1Res,X2Res).
goldbach(4,2,2).
goldbach(Y,X1,X2):-
    Y > 4,
    Y mod 2 =:= 0,
    X1var is Y - 3,
    X2var is 3,
    goldbach_help(Y,X1var,X2var,X1,X2).




