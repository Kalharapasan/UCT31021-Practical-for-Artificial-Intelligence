%Task 01
%Task 01_01
%Compare tow number and print the result
compare_numbers(X,Y):-
    (   X > Y ->
    format('~w is greater than ~w , ~n',[X,Y]);
    X<Y ->
    format('~w is less than ~w ~n',[X,Y]);
    format('~w equals ~w ~n',[X,Y])).

%Task 01_02
%Read two numbers from the user and compare then

start_comparison:-
    write('Enter the first number: '),
    read(X),
    write('Enter the second number: '),
    read(Y),
    compare_numbers(X,Y).


%Task 01_03

student_grade:-
    write('Enter mark 1: '),
    read(M1),
    write('Enter mark 2: '),
    read(M2),
    write('Enter mark 3: '),
    read(M3),
    Average is (M1+M2+M3)/3,
    (   Average >= 50 ->
    Result ='Pass';
    Result = 'Fail'),
    format('Average : ~2f - Result: ~w~n',[Average,Result]).

%Task 02
%Task 02_I

%Base case:Stop when counter reaches0
loop(0).

%Recursive case:print 'Looping...'and decrement counter

loop(N) :-
    N>0,
    writeln('Looping...'),
    NextN is N -1,
    loop(NextN).


%Task 02_II

%Base case:Stop when counter reaches10
count_up(10):-
    writeln(10).

%Recursive case:Print Current number and increment
count_up(N):-
    N<10,
    writeln(N),
    NextN is N+1,
    count_up(NextN).


%Task 02_III
%Base case:Stop when counter reaches 0
count_down(0).

%Recursive case:Print current number and decrement

count_down(N):-
    N>0,
    writeln(N),
    NextN is N-1,
    count_down(NextN).

%Interactive rule to read input and start countdown

count_down_from_input:-
    write('Enter a number: '),
    read(N),
    integer(N),
    N >= 1,
    count_down(N).

%Task 03
%Facts:district(Name,Area,Population)
district(kandy,160,1650).
district(ampara,450,865).
district(jaffna,265,798).
district(colombo,80,3650).

%Rule:Density=Population/Area
density(District,Density):-
    district(District,Area,Population),
    Density is Population/Area.


