%Task01

%1.Create initial list of colors
colors([red,blue,green,yellow,purple]).
%Main predicate to execute all operations
color_operations:-
    %get initial color list
    colors(Colors),
    write('Inital colors: '),
    writeln(Colors),

    %2.Check if pink exists and modify list
    (   memberchk(pink,Colors)->
    append(Colors,[grey],NewColors),
        writeln('Added grey to list');
    append(Colors,[pink],NewColors),
        writeln('Added pink to list')),

    %3.Sort in descending order and get last element
    sort(NewColors,SortedAsc),
    reverse(SortedAsc,SortedDesc),
    last(SortedDesc,LastColor),

    %4.Get length of modified list
    length(NewColors,Length),

    %5.Display results
    nl,
    write('Modified list: '),
    writeln(NewColors),
    write('Sorted descending: '),
    writeln(SortedDesc),
    write('Last color in sorted list: '),
    writeln(LastColor),
    write('Number of colors: '),
    writeln(Length).

%Task02
%Q01
%Student facts:student(IndexNo,FirstName,LastName)
student(11021,'Saman','Perera').
student(11022,'Mohamed','Humaith').
student(11021,'Nimal','Silva').
student(11021,'Viji','Kumar').
student(11021,'Lasantha','Jayamanna').
student(11021,'Nimal','Silva').
student(11021,'Ponnabalam','Ramanadan').

% Score
% facts:scores(IndexNo,UCT31021,SWT31012,CIS31012,SWT31022,NST31022)
scores(11021,50,71,57,65,61).
scores(11022,65,50,85,49,82).
scores(11023,100,85,100,89,76).
scores(11024,73,65,59,82,66).
scores(11025,60,90,78,96,100).

%Q02
%2.Is Janaka an undergraduate student?
is_student(Name):-
    student(_,Name,_);
    student(_,_,Name).


%Q03
%3.Who are the registered undergraduates in the departments?
find_registered(Name) :-
    student(Index, First, Last),
    (Name = First ; Name = Last),
    format('Student is registered: ~w ~w (Index: ~w)~n', [First, Last, Index]),
    !.

find_registered(_) :-
    write('Student is unregistered'), nl.


%04.Find index by either first or last name
find_by_name(Name, Index) :-
    student(Index, First, Last),
    (Name = First ; Name = Last).

% Q05 - Who sat the examination?
who_sat_exam :-
    writeln('Students who sat the exam:'),
    scores(Index, _, _, _, _, _),
    student(Index, First, Last),
    format('~w ~w (Index: ~w)~n', [First, Last, Index]),
    fail.
who_sat_exam.

% Q06 - Who missed the examination?
who_missed_exam :-
    writeln('Students who missed the exam:'),
    student(Index, First, Last),
    \+ scores(Index, _, _, _, _, _),
    format('~w ~w (Index: ~w)~n', [First, Last, Index]),
    fail.
who_missed_exam.

% Q07 - Check if any student scored 100 in any course
has_100_score :-
    (   scores(_, 100, _, _, _, _)
    ;   scores(_, _, 100, _, _, _)
    ;   scores(_, _, _, 100, _, _)
    ;   scores(_, _, _, _, 100, _)
    ;   scores(_, _, _, _, _, 100)
    ) -> writeln('Yes, at least one student scored 100 in some course')
    ;    writeln('No, no student scored 100 in any course').

% Q08 - Who scored 100 and in which subject?
with_100_scores :-
    writeln('Students who scored 100:'),
    (   scores(Index, 100, _, _, _, _),
        student(Index, First, Last),
        format('~w ~w scored 100 in UCT31021~n', [First, Last]),
        fail
    ;   scores(Index, _, 100, _, _, _),
        student(Index, First, Last),
        format('~w ~w scored 100 in SWT31012~n', [First, Last]),
        fail
    ;   scores(Index, _, _, 100, _, _),
        student(Index, First, Last),
        format('~w ~w scored 100 in CIS31012~n', [First, Last]),
        fail
    ;   scores(Index, _, _, _, 100, _),
        student(Index, First, Last),
        format('~w ~w scored 100 in SWT31022~n', [First, Last]),
        fail
    ;   scores(Index, _, _, _, _, 100),
        student(Index, First, Last),
        format('~w ~w scored 100 in NST31022~n', [First, Last]),
        fail
    ).
with_100_scores.
