%clauses

entrada(paella).
entrada(gazpacho).
entrada(consomé).

carne(filete_de_cerdo).
carne(pollo_asado).

pescado(trucha).
pescado(bacalao).

postre(flan).
postre(helado).
postre(pastel).

bebida(cerveza).
bebida(vino).
bebida(agua_mineral).
%fin clauses

principal(X):-carne(X);pescado(X).
menu(X,Y,Z):-entrada(X),principal(Y), postre(Z).
menu_noflan(X,Y,Z):-entrada(X),principal(Y), not(Z,flan).
menu_bebidas(X,Y,Z,W):-entrada(X),principal(Y),postre(Z),bebida(W).
