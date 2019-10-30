% This is a commment

person(socrates).
person(plato).
person(zeno).
person(aristotle).

mortal(X) :- person(X).

mortal_report:-
  write('Known mortals are: '),nl,
  mortal(X),
  write(X),nl,
  fail.
