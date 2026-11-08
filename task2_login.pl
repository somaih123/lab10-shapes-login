% Task 2: login page. The dataset is the user/2 facts: user(Name, Password).
% Run with:  ?- login.
% Type every username and password with a full stop after it, e.g.  ali.

% Dataset
user(ali, pass1).
user(sara, pass2).
user(noor, pass3).

login :- attempt(1).

% attempt(N): N is the number of this attempt (1, 2 or 3)
attempt(N) :-
    nl, write('Enter username: '),
    read(U),
    write('Enter password: '),
    read(P),
    check(U, P, N).

check(U, P, N) :-
    ( user(U, P) ->
        nl, write('Login Successful'), nl
    ;   nl, write('Login Unsuccessful'), nl, retry(N)
    ).

% the 3rd attempt has failed: no more attempts
retry(3) :-
    nl, write('Sorry, you exceeded the maximum number of attempts, try again later.'), nl.
% otherwise give the user another attempt
retry(N) :- N < 3, N1 is N + 1, attempt(N1).
