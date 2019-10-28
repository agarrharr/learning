fac(0, 1).

fac(N, F) :-
  N > 0,
  N1 is N - 1,
  fac(N1, F1),
  F is F1 * N.
