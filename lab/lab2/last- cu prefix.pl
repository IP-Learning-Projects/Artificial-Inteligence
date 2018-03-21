prefix([],_).
prefix([X|T1],[X|T2]):- prefix(T1,T2).

rev(L, R) :- rev(L, [], R).
rev([], R, R).
rev([H|T], C, R) :- rev(T, [H|C], R).

callFunction(X,Y):- rev(Y,W),prefix([X],W).

%verifica daca nr-ul x se afla pe ultima pozitie in lista Y
%apelare callfunction(5,[1,2,3,4,5]).
