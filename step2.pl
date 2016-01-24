neighbour(X,[X|_]).
neighbour(X,[_|T]) :- neighbour(X,T).
rigth(L, R, [L | [R | _]]).
rigth(L, R, [_ | Rest]) :- rigth(L, R, Rest).
next(X, Y, List) :- rigth(X, Y, List).
next(X, Y, List) :- rigth(Y, X, List).
einstein(Home, Fish_Owner) :-
 =(Home, [[home, norvegian, _, _, _, _], _, [home, _, _, _, milk, _], _, _]),
 neighbour([home, eng, _, _, _, red], Home),
 neighbour([home, swid, dogs, _, _, _], Home),
 neighbour([home, danish, _, _, tea, _], Home),
 rigth([home, _, _, _, _, green], [home, _, _, _, _, white], Home),
 neighbour([home, _, _, _, coffe, green], Home),
 neighbour([home, _, bird, pallmall, _, _], Home),
 neighbour([home, _, _, dunhill, _, yellow], Home),
 next([home, _, _, blend, _, _], [home, _, cat, _, _, _], Home),
 next([home, _, _, dunhill, _, _], [home, _, horses, _, _, _], Home),
 neighbour([home, _, _, blue_master, beer, _], Home),
 next([home, norvegian, _, _, _, _], [home, _, _, _, _, albastru], Home),
 neighbour([home, german, _, prince, _, _], Home),
 next([home, _, _, blend, _, _], [home, _, _, _, water, _], Home),
 neighbour([home, Fish_Owner, fish, _, _, _], Home).


