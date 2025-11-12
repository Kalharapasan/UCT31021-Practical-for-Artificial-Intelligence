
% --- Gender Facts ---
male(john).
male(roshi).
male(donald).
male(peter).
male(harry).
male(william).

female(regan).
female(aniya).
female(meera).
female(andriya).

% --- Parent Facts ---
parent_of(regan, john).
parent_of(roshi, john).
parent_of(roshi, andriya).
parent_of(regan, andriya).

parent_of(donald, peter).
parent_of(aniya, peter).

parent_of(john, harry).
parent_of(meera, harry).

parent_of(andriya, william).
parent_of(peter, william).

% --- Basic Relationships ---
father_of(Father, Child) :- male(Father), parent_of(Father, Child).
mother_of(Mother, Child) :- female(Mother), parent_of(Mother, Child).

% --- Grandparent Rules ---
grandfather_of(GF, Child) :- male(GF), parent_of(GF, P), parent_of(P, Child).
grandmother_of(GM, Child) :- female(GM), parent_of(GM, P), parent_of(P, Child).

% --- Sibling Rule ---
sibling(X, Y) :- parent_of(P, X), parent_of(P, Y), X \= Y.

% --- Sister Rule ---
sister_of(Sis, Person) :- female(Sis), sibling(Sis, Person).

% --- Aunt and Uncle Rules ---
aunt_of(Aunt, Person) :-
    parent_of(P, Person),
    sister_of(Aunt, P).

uncle_of(Uncle, Person) :-
    parent_of(P, Person),
    sibling(Uncle, P),
    male(Uncle).
