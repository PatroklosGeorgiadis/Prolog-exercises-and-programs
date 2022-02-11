%a)
between_(A,B,X):-
    A<B-1,X is A + 1.

between_(A,B,Y):-
    A<B-1,L is A + 1,
    between_(L,B,Y).

%between_(1,4,Y).

%b)

%c)
maximum([Head],B):-
    B=Head.

maximum([Head|Tail],B):-
    maximum(Tail,Y),Y>Head,B=Y,!.

maximum([Head|Tail],B):-
    B=Head,!.

%maximum([4,8,12,6,12,5],X).

grade(john,9).
grade(mary,8).
grade(michael,10).
grade(henry,7).
grade(george,10).
grade(bill,9).
grade(martin,7).

best_student(X):-
    findall(B,grade(_,B),Bag),
    maximum(Bag,Best),findall(Name,grade(Name,Best),X).
    % same as bagof(Name,grade(Name,Best),X)

%best_student(X).
