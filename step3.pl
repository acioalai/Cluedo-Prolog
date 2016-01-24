move(e,w).
move(w,e).
pass([X,X,Goat,Cabbage],wolf,[Y,Y,Goat,Cabbage]) :- move(X,Y).
pass([X,Wolf,X,Cabbage],goat,[Y,Wolf,Y,Cabbage]) :- move(X,Y).
pass([X,Wolf,Goat,X],cabbage,[Y,Wolf,Goat,Y]) :- move(X,Y).
pass([X,Wolf,Goat,Cabbage],nothing,[Y,Wolf,Goat,Cabbage]) :- move(X,Y).

check(X,X,_).
check(X,_,X).

valid([Man,Wolf,Goat,Cabbage]) :-
check(Man,Goat,Wolf),
check(Man,Goat,Cabbage).

result([e,e,e,e],[]).

result(Config,[Move|NextMove]) :-
pass(Config,Move,NextConfig),
valid(NextConfig),
result(NextConfig,NextMove).
