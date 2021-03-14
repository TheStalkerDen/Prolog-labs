gcd(A,0,A):-!.
gcd(A,B,Res):- B=\=0,A2 is A mod B, gcd(B,A2,Res2),Res is Res2.
coprime(A,B):-gcd(A,B,Res),abs(Res) =:= 1.

phi(M,Res):-
    M > 0,
    phi_helper(M,M-1,1,Res).
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
