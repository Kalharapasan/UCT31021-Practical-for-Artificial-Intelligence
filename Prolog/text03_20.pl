myName:-
    write('Enter you Name : '),
    read(Name),
    write(Name),nl.

welcom_to_prolog :-
    write('Enter your name: '),
    read(Name),
    write('Welcome '),write(Name),write(' to Prolog Programming.'), nl.

bmi(Weight,Height,BMI) :-
    BMI is Weight/(Height*Height).

calculate_bmi :-
    write('Enter weight (kg): '), read(Weight),
    write('Enter height (m): '), read(Height),
    BMI is Weight / (Height * Height),
    write('Your BMI is: '), write(BMI), nl.

sum(X, Y, Result) :-
    Result is X + Y.

multiply(X, Y, Result) :-
    Result is X * Y.

calculate :-
    write('Enter first number: '), read(X),
    write('Enter second number: '), read(Y),
    write('Enter operation (+, -, *, /): '),
    read(Op),
    perform_operation(X, Y, Op, Result),
    write('The result is: '), write(Result), nl.

perform_operation(X, Y, '+', Result) :-
    Result is X + Y.
perform_operation(X, Y, '-', Result) :-
    Result is X - Y.
perform_operation(X, Y, '*', Result) :-
    Result is X * Y.
perform_operation(X, Y, '/', Result) :-
    Y \= 0, Result is X / Y.
perform_operation(_, 0, '/', 'Error: Division by zero!').


check_age(Age,Status):-
    (Age<10->Status=child;Status=adult).



check_user_age :-
    write('Enter your age: '),
    read(Age),
    (Age<18 ->write("You are a child");write("you are a adult")).



