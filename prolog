%appartenenza

%pensare ricorsivamente
appartiene(X, [X|_]).

appartiene(X, [_|T]):-
    appartiene(X,T).



%LUNGHEZZA LISTA

lunghezza([],0).
lunghezza([_|T],N) :-
    lunghezza(T,N1),
    N is N1+1.


%CONCATENAZIONE LISTE

concatena([],L,L).
concatena([H|T],L2,[H|R]) :-
    concatena(T,L2,R).


%LISTA ROVESCIATA

rovescia([], []). %caso base, lista vuota rovesciata è lista vuota

rovescia([H|T], R) :-
    rovescia(T, RT),
    concatena(RT, [H], R).
