%precede_list([],[_]):-
%    false.

precede_list([Head1],[Head2|_]):-
    Head1==Head2,
    write('Yes'),!.

precede_list([Head1|Tail1],[Head2|Tail2]):-
    Head1==Head2,!,
    precede_list(Tail1,Tail2).

precede_list(_,_):-
    write('No').
