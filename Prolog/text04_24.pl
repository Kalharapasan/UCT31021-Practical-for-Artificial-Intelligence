% Rule: A number X is a positive even number if it's greater than 0 and divisible  2
positive_even(X) :-
    X > 0,
    0 is X mod 2.

% Base case: filtering from an empty list gives an empty result
filter_positive_even([], []).

% Recursive case: if Head is a positive even number, keep it
filter_positive_even([H|T], [H|Filtered]) :-
    positive_even(H),
    filter_positive_even(T, Filtered).

% Otherwise, skip the Head
filter_positive_even([H|T], Filtered) :-
    \+ positive_even(H),
    filter_positive_even(T, Filtered).
