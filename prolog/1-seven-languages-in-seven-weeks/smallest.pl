smallest([], nil).
smallest([Head|[]], Head).

smallest([H,K|Tail], Min) :-
  H =< K,
  smallest([H|Tail], Min).

smallest([H,K|Tail], Min) :-
  H > K,
  smallest([K|Tail], Min).
