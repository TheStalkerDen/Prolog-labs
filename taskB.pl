gcd(A,0,A):-!.
gcd(A,B,Res):- B=\=0,A2 is A mod B, gcd(B,A2,Res2),Res is Res2.
coprime(A,B):-gcd(A,B,Res),abs(Res) =:= 1.
