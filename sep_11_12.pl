%a)
adjacent(A,B,[La,Lb|L]):-
    A=La,B=Lb,!.

adjacent(A,B,[La,Lb|L]):-
    adjacent(A,B,[Lb|L]).

/*adjacent(2,3,[1,2,3]).
adjacent(2,3,[1,3,2]).*/

%b)
median(Xs,X):-
    add(Xs,MO),length(Xs,Length),
    X is MO/Length.

add([],MO):-
    MO is 0.

add([X|Y],MO):-
    add(Y,NMO),MO is NMO+X.

%median([4,5,6],X).

%c)
guess([]).

guess([Head|Tail]):-
    write("Guess letter: "),
    read(Letter),Head==Letter,
    write("Ok"),nl,guess(Tail).

guess(X):-
    write("Fail. Try again!"),nl,
    guess(X).

%guess([a,p,p,l,e]).


