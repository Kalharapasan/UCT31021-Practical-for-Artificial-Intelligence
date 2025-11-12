
% Generate permutations
perm([], []).
perm(L, [H|T]) :-
    select(H, L, R),
    perm(R, T).

% Check diagonal safety
safe([]).
safe([Q|Others]) :-
    safe(Others),
    no_attack(Q, Others, 1).

% Check diagonals
no_attack(_, [], _).
no_attack(Q, [Q1|Others], D) :-
    Q =\= Q1 + D,
    Q =\= Q1 - D,
    D1 is D + 1,
    no_attack(Q, Others, D1).

% 4-Queens solution
four_queens(Solution) :-
    perm([1,2,3,4], Solution),
    safe(Solution).
