gcd(X,X,X).
gcd(X,Y,D):-
	X < Y,
	Y1 is Y - X,
	gcd(X, Y1, D).
gcd(X,Y,D):-
	Y < X,
	X1 is X - Y,
	gcd(X1, Y, D).

coprime(A,B):-gcd(A,B,Res), Res =:= 1,!.
