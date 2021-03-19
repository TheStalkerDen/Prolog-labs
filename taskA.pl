fib(0,0):-!.
fib(1,1):-!.
fib(X,Res):-
    X >= 2,
    X1 is X-1,
    X2 is X-2,
    fib(X1,Res1),
    fib(X2,Res2),
    Res is Res1+Res2.



