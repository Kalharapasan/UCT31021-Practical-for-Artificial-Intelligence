%Task 01
%Task 01_01
likes(john,pizza).
likes(john,ice_cream).
likes(mary,pizza).
likes(susan,salad).

%Task 01_02
%Both Person1 and Person2 like the same Item(And condition)
both_like(Person1,Person2,Item):-
    likes(Person1,Item),
    likes(Person2,Item).

%Task 01_03
john_likes(Item):-
    likes(john,Item).

%Task 02
check_answer:-
    write('Enter the name of the logical programming language: '),
    read(UserInput),
    (   UserInput == 'PROLOG' ->
    writeln('Correct Answer');
    writeln('Wrong Answer')).

%Task 03
%Task 03_01
%Facts:district(District,Province)
district(gampha,western).
district(colombo,western).
district(kalutara,western).
district(tincomala,eastern).
district(batticaloa,eastern).
district(ampara,eastern).
district(jaffna,northrn).
district(kilinochchi,northrn).
district(vavuniya,northrn).
district(anuradhapura,north_central).
district(polonnaruwa,north_central).
district(badulla,uva).
district(monaragala,uva).
district(hambantota,southern).
district(matara,southern).
district(galle,southern).
district(kandy,central).
district(nuwara_eliya,central).
district(matale,central).
district(puttalam,north_western).
district(kurunegala,north_western).
district(kegalle,sabaragamuwa).
district(ratnapura,sabaragamuwa).

%Task 03_03
%Rule:Get the province for a given district
province_of(District,Province):-
    district(District,Province).
