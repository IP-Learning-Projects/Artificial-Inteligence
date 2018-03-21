prefix([],_).
prefix([X|T1],[X|T2]):- prefix(T1,T2).

rev(L, R) :- rev(L, [], R).
rev([], R, R).
rev([H|T], C, R) :- rev(T, [H|C], R).

callFunction(X,Y):- rev(X,Z),rev(Y,W),prefix(Z,W).