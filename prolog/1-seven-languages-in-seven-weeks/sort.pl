perm([], []).
perm(List, [H|Perm]) :-
  delete(H, List,Rest),
  perm(Rest, Perm).

sort_list(List, Sorted) :-
  perm(List, Sorted),
  is_sorted(Sorted).

is_sorted([]).
is_sorted([_]).

is_sorted([H,K|Tail]) :-
  H =< K,
  is_sorted([K|Tail]).
