student_grade :-
    write("Enter the subject 01 Mark: "), read(M1),
    write("Enter the subject 02 Mark: "), read(M2),
    write("Enter the subject 03 Mark: "), read(M3),
    Average is (M1 + M2 + M3) / 3,
    ( Average >= 50 -> write('Pass'); write('Fail') ),
    nl.


compare_number :-
    write("Enter the first number: "), read(X),
    write("Enter the second number: "), read(Y),
    ( X > Y -> write(X), write(' is greater than '), write(Y);
      X < Y -> write(X), write(' is less than '), write(Y);
      write('Both numbers are equal') ).

displau_loop(0).

display_loop(N):-
    N>0,
    write('Looping ...'),nl,
    Next is N-1,
display_loop(Next).


loop_message(0) :- !.
loop_message(N) :-
    N > 0,
    write('Looping...'), nl,
    N1 is N - 1,
    loop_message(N1).



count_to_10(11) :- !.
count_to_10(N) :-
    N =< 10,
    write(N), nl,
    N1 is N + 1,
    count_to_10(N1).



count_down(0) :- !.
count_down(N) :-
    N > 0,
    write(N), nl,
    N1 is N - 1,
    count_down(N1).

display_number(11) :- !.
display_number(Current) :-
    Current =< 10,
    write(Current), nl,
    Next is Current + 1,
    display_number(Next).

display_count_down(1):-write(1),nl.
display_count_down(Current):-
    Current>1,
    write(Current),nl,
    Next is current-1,
    display_count_down(Next).


district(kandy, 160, 1650).
district(ampara, 450, 865).
district(jaffna, 265, 798).
district(colombo, 80, 3650).

density(District, Density) :-
    district(District, Area, Population),
    Density is Population / Area.

display_density(District) :-
    density(District, Density),
    write('The population density of '), write(District),
    write(' is '), write(Density), write(' people per unit area.'), nl.
