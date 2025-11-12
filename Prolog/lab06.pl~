% TASK 1
step(X,0) :- X < 3.
step(X,2) :- X >= 3, X < 6.
step(X,4) :- X >= 6.

% TASK 2:
max(X,Y,X) :- X >= Y.
max(X,Y,Y) :- X < Y.

% TASK 3:
is_even_positive(X) :-
    X > 0,
    0 is X mod 2.

%TASK 4
parent(john, julia).
parent(peter, john).
parent(peter, noah).
parent(peter, amal).
parent(peter, perera).
parent(paul, peter).
parent(paul, sara).
parent(paul, walker).
parent(paul, tailor).

ancestor(X,Y) :- parent(X,Y).
ancestor(X,Y) :- parent(X,Z), ancestor(Z,Y).
