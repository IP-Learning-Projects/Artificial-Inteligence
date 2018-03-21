taller(bob,mike).
taller(mike,jim).
taller(jim,george).

isTaller(x,z):- taller(x,y),isTaller(y,z).