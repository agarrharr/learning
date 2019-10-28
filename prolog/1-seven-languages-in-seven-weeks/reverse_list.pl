revers([], []).
revers([Head|[]], [Head]).

revers([Head|Tail], ReverseList) :-
  revers(Tail, ReverseTail),
  append(ReverseTail, [Head], ReverseList).
