mortal(X):-man(X).
man(socrate).

killer(butcher).
married(mia, marsellus).
dead(zed).
kills(marsellus,X):-
    gives_flowers(X,mia).
gives_flowers(elena,mia).


loves(mia,X):-
    is_good_dancer(X).
eats(jules,X):-
	nutrition(X);tasty.
