%parsing a list
parse([]).
parse([H|T]) :-
    write(H),
    parse(T).


%check if is a list
is_list([]).
is_list([_|T]) :- is_list(T).

%append a list to another list
append1([],L,L). 
append1([H|T],L2,[H|L3])  :-  append1(T,L2,L3).
% naive rec reverse list
naive_rev([],[]).
naive_rev([H|T], R) :- naive_rev(T, S), append(S, [H], R).

% accumulator rec reverese list
rev(L, R) :- rev(L, [], R).
rev([], R, R).
rev([H|T], C, R) :- rev(T, [H|C], R).

list_length1([],0).
list_length1([_|Tail],Length) :- 
             list_length1(Tail,TailLength),
             Length is TailLength + 1.
   
%accumulator based
list_length2(List,Length) :- list_length2(List,0,Length).
list_length2([],Length,Length).
list_length2([_|Tail],Accumulator,Length) :-
             NewAcc is Accumulator + 1, 
             list_length2(Tail,NewAcc,Length).


% base case
addup([], 0). 

% recursive case: if the base-case rule does not match, this one must:
addup([FirstNumber | RestOfList], Total) :-
    addup(RestOfList, TotalOfRest), 
    Total is FirstNumber + TotalOfRest.
