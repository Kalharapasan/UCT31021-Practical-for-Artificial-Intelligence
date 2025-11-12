
% Initial and Goal State
initial_state(state(3,3,0,0,left)).
goal_state(state(0,0,3,3,right)).

% Safe condition: missionaries are not outnumbered
safe(M, C) :- M >= C.
safe(0, _).  % Safe if no missionaries

% Move patterns (allowed boat movements)
move_pattern(2, 0).  % Two missionaries
move_pattern(0, 2).  % Two cannibals
move_pattern(1, 1).  % One of each
move_pattern(1, 0).  % One missionary
move_pattern(0, 1).  % One cannibal

% Move from left to right
move(state(ML, CL, MR, CR, left), state(ML2, CL2, MR2, CR2, right)) :-
    move_pattern(DM, DC),
    ML2 is ML - DM, CL2 is CL - DC,
    MR2 is MR + DM, CR2 is CR + DC,
    valid(state(ML2, CL2, MR2, CR2, right)).

% Move from right to left
move(state(ML, CL, MR, CR, right), state(ML2, CL2, MR2, CR2, left)) :-
    move_pattern(DM, DC),
    ML2 is ML + DM, CL2 is CL + DC,
    MR2 is MR - DM, CR2 is CR - DC,
    valid(state(ML2, CL2, MR2, CR2, left)).

% Validate the state
valid(state(ML, CL, MR, CR, _)) :-
    ML >= 0, CL >= 0, MR >= 0, CR >= 0,
    safe(ML, CL), safe(MR, CR).

% Search path from initial to goal
solve :-
    initial_state(State),
    goal_state(Goal),
    path(State, Goal, [State], Path),
    print_path(Path).

% Recursive path search
path(State, State, Path, Path).
path(State, Goal, Visited, Path) :-
    move(State, Next),
    \+ member(Next, Visited),
    path(Next, Goal, [Next|Visited], Path).

% Print the solution path
print_path([]).
print_path([H|T]) :-
    print_path(T),
    write(H), nl.
