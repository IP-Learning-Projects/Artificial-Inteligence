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








parinte(X,Y).
mama(X,Y):- parinte(X,Y),femeie(X).
tata(X,Y):- parinte(X,Y),barbat(X).
bunic(X,Y):- parinte(X,Y),parinte(Y,Z),barbat(X).
bunica(X,Y):- parinte(X,Y),parinte(Y,Z),femeie(X).


