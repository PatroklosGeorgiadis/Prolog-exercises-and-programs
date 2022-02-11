%a)
adjacent(A,B,[La,Lb|L]):-
    A=La,B=Lb,!.

adjacent(A,B,[La,Lb|L]):-
    adjacent(A,B,[Lb|L]).

/*adjacent(2,3,[1,2,3]).
adjacent(2,3,[1,3,2]).*/

%b)
insert(X,[Head|Tail],L):-
    X>Head,insert(X,Tail,Y),append([Head],Y,L),!.

insert(X,List,L):-
       append([X],List,L).

/*insert(0,[1,4,9],L).
insert(10,[1,4,9],L).
insert(3,[1,4,9],L).*/

%c)
change(you,i).
change(are,[am, not]).
change(french, german).
change(do, no).
change(X,X).

alter([Head|Tail],L):-
    alter(Tail,Y),change(Head,Res),is_list(Res),append(Res,Y,L),!.

alter([Head|Tail],L):-
    alter(Tail,Y),change(Head,Res),append([Res],Y,L),!.

alter([Head],L):-
    change(Head,Res),append([Res],[],L).

/*alter([do,you,know,french],L).
alter([you,are,a,computer],L).*/
