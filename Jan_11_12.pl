%a)
remove(X,[Head|Tail],L):-
    X=\=Head,remove(X,Tail,Y),append([Head],Y,L),!.

remove(X,[Head|Tail],L):-
    L=Tail.

/*remove(2,[1,2,2,2,2,3,4,4,4,2,2,5],L).
 * remove(5,[1,2,2,2,2,3,4,4,4,2,2,5],L).*/

%b)
p(A,B):-
    p(A,[],B).

p([],A,A).

p([A|B],C,D):-
    p(B,[A|C],D).

% p Reverses a list, or checks if a list is the reversed version of
% another given list
%p([1,2,3],X). Output: X = [3, 2, 1]
%p(X,[1,2,3]). First output: X = [3, 2, 1], if ; second output: error

%c)
file_to_list(File,List):-
  setup_call_cleanup(
    open(File, read, In),
    readData(In, List),
    close(In)
  ).

readData(In, L):-
  read_term(In, H, []),
  (   H == end_of_file
  ->  L = []
  ;   L = [H|T],
      readData(In,T)
  ).

/*file_to_list("testfile.abc",List).*/
