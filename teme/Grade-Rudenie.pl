female(xena).

female(zara).

female(gaia).

female(afrodita).


female(soacra).


male(bob).

male(john).

male(sam).

male(kenoby).


male(socru).


kid(zac).

kid(phineas).

kid(ferb).

kid(winnie).

kid(edington).

kid(lich).


mother(xena,zac).

mother(xena,phineas).

mother(zara,ferb).

mother(gaia,winnie).

mother(gaia,edington).


mother(soacra,john).


father(bob,zac).

father(sam,phineas).

father(john,ferb).

father(sam,winnie).

father(kenoby,lich).


father(socru,zara).


%X is a parent of Y

parent(X,Y):-
   
 	%X is either mother of Y OR
   
	 mother(X,Y);
  
 	%X is father of Y
   
	 father(X,Y).


%X and Y are brothers
brother(X,Y):-
    %same father
    male(Z),
 	parent(Z,X),
    parent(Z,Y);
    
    %same mother
    female(Z),
    parent(Z,X),
    parent(Z,Y).


%X and Y are married
married(X,Y):-
    %if they have different genders
	male(X),
    female(Y),
  
 	%and if they are the parent of the same kid
    parent(X,Z),
    parent(Y,Z),
    kid(Z);
   
 
    	 %if they have different genders
	female(X),
    male(Y),
  
	 %and if they are the parent of the same kid
    parent(X,Z),
    parent(Y,Z),
    kid(Z).



%X is a stepmother of Y
stepmother(X,Y):-
   
	 %if there's a male who's also a father of Y
    male(W),
   
	 %and they are married
    married(X,W),
    parent(W,Y).


%X is a stepfather of Y
stepfather(X,Y):-
    
	%if there's a female who's also a mother of Y
    female(W),
  
	  %and they are married
    married(X,W),
    parent(W,Y).


%X is a mother in law of Y
mother_in_law(X,Y):-
   
	 %if X is a parent of Y
    parent(X,Y),
 
	   %and there's a female
    female(Z),
    
	%i.e. Z and Y are married
    married(Z,Y).


%X is a mother in law of Y
father_in_law(X,Y):-
   
	 %if X is a parent of Y
    parent(X,Y),
   
	 %and there's a male
    male(Z),
    
	 %i.e. Z and Y are married
    married(Z,Y).
    

    
    





    

