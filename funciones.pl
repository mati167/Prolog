numero(-1).
numero(1).
numero(2).
numero(3).


funcion(X,Y):- X<0,Y is -1*X,!.
funcion(X,0):-X==0.
funcion(X,X):-X>0.

cartesiano(X,Y):-numero(X),numero(Y).
seleccionmayor(X,Y):-cartesiano(X,Y),X<Y.
proyeccion(X):-seleccion(X,_).
maximo(X):-numero(X),not(proyeccion(X)).
seleccionmenor(X,Y):-cartesiano(X,Y),X>Y.
minimo(X):-numero(X),not(proyeccion(X)).

factorial(X,1):-X==0,!.
factorial(X,Y):-A is X-1,factorial(A,Y1),Y is X*Y1.

fibonacci(0,1):-!.
fibonacci(1,1):-!.
fibonacci(X,Y):-A is X-1, B is X-2, fibonacci(A, Y1), fibonacci(B,Y2),Y is Y1+Y2.
