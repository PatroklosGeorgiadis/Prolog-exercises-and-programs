%a)
add([Head1],[Head2],NewList):-
    append([Head1], [Head2], NewList).

add([Head1|Tail1], [Head2|Tail2], A) :-
    add(Tail1,Tail2,X),
    append([Head1,Head2],X,A).

%add([10,30,50],[20,40,60],L).

%b)
lay([],[]).

lay([Head|Tail],NewList):-
    is_list(Head),append(Head,Tail,CheckedList),
    lay(CheckedList,NewList).

lay([Head|Tail],NewList):-
    lay(Tail,List),append([Head],List,NewList),!.

%lay([1,[2,3],[[4]],[[]]],X).

%c)
cluster([A|B],X,Y):-
    A=\=32,cluster(B,X1,Y),append([A],X1,X).

cluster([A|B],X,Y):-
    A==32,Y=B,X=[].

/*cluster([12,26,44,32,65,13],A,B).*/

cluster2(S):-
    name(S,L),cluster(L,X,Y),name(String1,X),
    write("Next Item is "),write(String1),write("\n"),
    name(String2,Y),cluster2(String2).

cluster2(S):-
	write("Last Item is "),write(S).

/*cluster2("This is a sentence").*/
