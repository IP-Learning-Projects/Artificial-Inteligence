prefix([],_).
prefix([X|T1],[X|T2]):- prefix(T1,T2).