%family(person(),person(),[person(),..])
%person(name(),lastname(),date([dd,month,yyyy]),employed([employer,salary]))
%i)mother_of_3_plus()
%mother_of_3_plus(Y):-
%    family(X,Y,[A,B,C|D]).
%ii)names_of_3_plus_children_families()
family(person(name(tom),lastname(fox),date(07,may,1950),works(bbc,15200)),
       person(name(ann),lastname(fox),date(09,may,1951),unemployed),
       [person(name(pat),lastname(fox),date(05,may,1973),unemployed),
       person(name(jim),lastname(fox),date(05,may,1973),unemployed)]).
family(person(name(bill),lastname(graham),date(28,july,1961),works(tesco,1100)),
       person(name(mandy),lastname(graham),date(13,march,1964),works(bp,8500)),
       [person(name(tim),lastname(graham),date(12,january,1988),unemployed),
       person(name(jim),lastname(graham),date(06,july,1990),unemployed),
       person(name(kim),lastname(graham),date(06,july,1990),unemployed)]).
family(person(name(kevin),lastname(griffith),date(08,june,1956),works(vodafone,12250)),
       person(name(gwen),lastname(griffith),date(23,december,1957),works(bbc,14000)),
       [person(name(jason),lastname(griffith),date(30,april,1979),unemployed),
       person(name(ryan),lastname(griffith),date(12,may,1980),unemployed),
       person(name(roger),lastname(griffith),date(12,may,1980),unemployed),
       person(name(craig),lastname(griffith),date(12,may,1980),unemployed),
       person(name(colleen),lastname(griffith),date(14,october,1985),unemployed)]).

mother_of_3_plus(X,Y):-
    family(_,person(name(X),lastname(Y),_,_),[_,_,_|_]).

names_of_3_plus_children_families():-
    mother_of_3_plus(Wife,LastName),
    family(person(name(Husband),lastname(LastName),_,_),person(name(Wife),_,_,_),ChildrenX),
    write("Children = "),
    child_list(ChildrenX),
    write("\nHusband = "),write(Husband),writeln(","),
    write("Wife = "),write(Wife).

child_list([]).

child_list([Head|Tail]):-
    person(name(ChildName),_,_,_)=Head,
    write(ChildName),
    write(", "),
    child_list(Tail).

%-

wife(X):-
    family(_,person(name(A),lastname(B),_,_),[_|_]),
    X=[A|B].

employed_wife(X,Y):-
    wife([X|Y]),
    family(_,person(name(X),lastname(Y),_,works(_,_)),[_|_]).

exists(X):-
    (   family(person(name(A),lastname(B),_,_),_,[_|_]);
    family(_,person(name(A),lastname(B),_,_),[_|_]);
    family(_,_,ChildrenList),member(person(name(A),lastname(B),_,_),ChildrenList)),
    X=[A|B].

unemployed_parents_born_before_1963(X,Y,Z):-
    exists([X|Y]),
    (   family(person(name(X),lastname(Y),date([_,_,Z]),unemployed),_,[_|_]);
    family(_,person(name(X),lastname(Y),date([_,_,Z]),unemployed),[_|_])),
    Z<1963.











