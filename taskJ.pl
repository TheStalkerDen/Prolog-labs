adjacent(X,Y,[X,Y|_]):-!.
adjacent(X,Y,[Y,X|_]):-!.
adjacent(X,Y,[_|T]):- adjacent(X,Y,T),!.
