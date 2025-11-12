
% --- Transactions: transaction(Sender, Receiver, Amount, Date)
transaction(john, mary, 100000, '2024-09-01').
transaction(mary, alex, 50000, '2024-09-08').
transaction(alex, john, 30000, '2024-09-15').
transaction(john, bob, 70000, '2024-09-20').
transaction(bob, mary, 60000, '2024-09-22').
transaction(mary, john, 200000, '2024-09-26').
transaction(peter, hendry, 40000, '2024-09-28').

% --- Rules for Received and Sent
received(Person, Amount) :- transaction(_, Person, Amount, _).
sent(Person, Amount) :- transaction(Person, _, Amount, _).

% --- Total Received and Sent
total_received(Person, Total) :-
    findall(Amount, received(Person, Amount), List),
    sum_list(List, Total).

total_sent(Person, Total) :-
    findall(Amount, sent(Person, Amount), List),
    sum_list(List, Total).

% --- Balance Calculation
balance(Person, Balance) :-
    total_received(Person, R),
    total_sent(Person, S),
    Balance is R - S.

% --- Can Person Send Amount?
can_send(Person, Amount) :-
    balance(Person, Balance),
    Balance >= Amount.

% --- Transactions Involving a Person
involved_in(Person, Sender, Receiver, Amount, Date) :-
    transaction(Sender, Receiver, Amount, Date),
    (Sender = Person; Receiver = Person).
