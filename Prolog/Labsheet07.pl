
%Task 02
max(X,Y,Max):-
    X>=Y,Max is X->write('X');X<Y,Max is  Y->write('Y').


% Task 03:
even_number(X) :-
    X > 0,
    X mod 2 =:= 0,
    write('Mod Number').

%Task 04
parent(john,julia).
parent(peter,john).
parent(peter,noah).
parent(peter,amal).
parent(peter,perera).
parent(paul,peter).
parent(paul,sara).
parent(paul,walker).
parent(paul,tailor).

ancestor(X,Y):-
    parent(X,Y),
    !.
ancestor(X,Z):-
    parent(X,Z),
    acestor(X,Z).


