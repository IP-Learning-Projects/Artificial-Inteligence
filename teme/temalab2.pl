barbat(andrei).
barbat(cristi).
barbat(marius).
barbat(ovidiu).
barbat(george).

femeie(adriana).
femeie(elena).
femeie(ana).

parinte(andrei,cristi).
parinte(andrei,elena).
parinte(elena,ana).
parinte(ana,george).
parinte(cristi,adriana).
parinte(cristi,marius).
parinte(cristi,ovidiu).


casatorit(andreea,mihai).
casatorit(georgiana,andrei).
casatorit(cristi,clara).


mama(X,Y):- parinte(X,Y),femeie(X).
tata(X,Y):- parinte(X,Y),barbat(X).
bunica(X, Y) :- mama(X, Z), mama(Z, Y).
bunic(X,Y):- parinte(X,Z),tata(Z,Y).
frate(X, Y) :- parinte(Z, X), parinte(Z, Y), barbat(X).
sora(X, Y) :- parinte(Z, X), parinte(Z, Y), femeie(X).

soacra(X,Y):- casatorit(Y,Z),mama(X,Z).
socru(X,Y):- casatorit(Y,Z), tata(X,Z).
cumnata(X,Y):-casatorit(Y,Z), sora(X,Z).
cumnat(X,Y):-casatorit(Y,Z),frate(X,Z).
ginere(X,Y):- soacra(Y,X);socru(Y,X).
nora(X,Y):- soacra(Y,X);socru(Y,X).
verisor(X,Y):- bunica(Z,X),bunica(Z,Y), barbat(X).
verisoara(X,Y):- bunica(Z,X),bunica(Z,Y), femeie(X).











