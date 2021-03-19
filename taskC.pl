gcd(X,X,X).
gcd(X,Y,D):-
	X < Y,
	Y1 is Y - X,
	gcd(X, Y1, D).
gcd(X,Y,D):-
	Y < X,
	X1 is X - Y,
	gcd(X1, Y, D).

coprime(A,B):-gcd(A,B,Res),Res =:= 1.

phi(M,Res):-
    M > 0,
    phi_helper(M,M-1,1,Res),!.
phi_helper(_,0,_,1).
phi_helper(_,1,Phi,Phi).
phi_helper(M,Y,Phi,Res):-
    coprime(M,Y),
    Y1 is Y - 1,
    NewPhi is Phi + 1,
    phi_helper(M,Y1,NewPhi,Res).
phi_helper(M,Y,Phi,Res):-
    Y1 is Y - 1,
    phi_helper(M,Y1,Phi,Res).
