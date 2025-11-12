%Task 02

welcome:-
    write("Hello World."),nl.

%Task 03

% Facts
fat(john).                     % Fact I: John is fat.
brown(dog).                    % Fact II: Dog is brown.
friend(julian, bob).           % Fact III: Julian is friend with Bob.
bigger_than(elephant, horse).  % Fact IV: Elephant is bigger than horse.
bigger_than(donkey, dog).      % Fact V: Donkey is bigger than dog.
likes(malki, roja).            % Fact VI: Malki likes Roja.

% Rules
likes(_, roja).                % Rule VII: Everyone likes Roja.
likes(john, X) :- true.        % Rule VIII: John likes everyone.

% Rule IX: John likes Roja or Mary
likes(john, roja).             % John likes Roja.
likes(john, mary).             % John likes Mary.

% John does not like pizza (contradiction check)
not(likes(john, pizza)).       % Rule X: John does not like pizza.


%Task 04

fruit(apple).
fruit(mango).
fruit(banana).
fruit(orange).

%Task 05
% Numbers
number_example(42).            % Integer example
number_example(-7.65).         % Negative float example
number_example(3.14159).       % Float example

% Atoms
atom_example(prolog).          % Simple atom
atom_example(hello_world).     % Atom with underscore
atom_example('This is an atom'). % Atom with spaces

% Variables
variable_example(X).           % Single letter variable
variable_example(My_Variable). % Descriptive variable
variable_example(Temperature123). % Variable with numbers

%Task 06
% Rule to read user input and display it
myNames :-
    write('Enter your name: '),
    read_line_to_string(user_input, Name),
    write(Name).

% Rule to request the user's name and welcome them to Prolog Programming
welcomes :-
    write('Enter your name: '),
    read_line_to_string(user_input, Name),
    format('Welcome ~w to Prolog Programming.', [Name]).


%Practice Question 01

% Knowledge base for colors
color(red).
color(blue).
color(green).
color(yellow).
color(black).
color(white).

% Rule to identify a color
is_color(X) :-
    color(X),
    format('~w is a color.', [X]).


%Practice Question 02
% Knowledge base for courses
course(cis_11051, 'Database Design').
course(cis_21031, 'Platform Technology').
course(utc_31021, 'AI').
course(cis_41032, 'Advanced Database').

% Rule to display course details
course_details(Code) :-
    course(Code, Name),
    format('~w is ~w.', [Code, Name]).


%Practice Question 03

% Rule to read student data and display it
student :-
    write('Enter name: '),
    read_line_to_string(user_input, Name),
    write('Enter Age: '),
    read(Age),
    write('Enter Specialization: '),
    read_line_to_string(user_input, Specialization),
    write('Enter GPA: '),
    read(GPA),
    format('student: Name: ~w, Age: ~w, Specialization: ~w, GPA: ~w.',
           [Name, Age, Specialization, GPA]).













