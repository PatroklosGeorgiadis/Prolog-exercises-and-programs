%Ä-Æ
insert(X,[Head|Tail],L):-
    X>Head,insert(X,Tail,Y),append([Head],Y,L),!.

insert(X,List,L):-
       append([X],List,L).

/*insert(0,[1,4,9],L).
insert(10,[1,4,9],L).
insert(3,[1,4,9],L).*/

extract(_,0,[]).
extract(Xs,N,[X|Zs]) :- N > 0,
    length(Xs,L),
    I is random(L) + 1,
    remove_at(X,Xs,I,Ys),
    N1 is N - 1,
    extract(Ys,N1,Zs).

remove_at(X,[X|Xs],1,Xs).
remove_at(X,[Y|Xs],K,[Y|Ys]) :- K > 1,
   K1 is K - 1, remove_at(X,Xs,K1,Ys).

%extract([1,2,3,4,5,6,7,8,9],3,X).

%Ì-Í
part([X1,X2|_],X1,X2,R):-
    R=[X1,X2].

part([X1,X2|T],X1,Y,R):-
    part([X2|T],X2,Y,Rt),R=[X1|Rt],!.

part([H|T],X,Y,R):-
    H\=X,part(T,X,Y,R).

%part([1,2,3,4,5,6,7,8,9],3,6,X).


%Î-Ð
check([H],Y):-
    append([],[H],Y).
check([H1,H2|T],Y):-
    append([H2],T,CH),
    check(CH,Y1),H1=:=H2,append([H1],[=],Yadd),append(Yadd,Y1,Y).
check([H1,H2|T],Y):-
    append([H2],T,CH),
    check(CH,Y1),H1<H2,append([H1],[<],Yadd),append(Yadd,Y1,Y).
check([H1,H2|T],Y):-
    append([H2],T,CH),
    check(CH,Y1),H1>H2,append([H1],[>],Yadd),append(Yadd,Y1,Y).

%check([7,9,9,2],X).

part([X1,X2|_],X1,X2,R):-
    R=[X1,X2].

part([X1,X2|T],X1,Y,R):-
    part([X2|T],X2,Y,Rt),R=[X1|Rt],!.

part([H|T],X,Y,R):-
    H\=X,part(T,X,Y,R).

%part([1,2,3,4,5,6,7,8,9],3,6,X).







