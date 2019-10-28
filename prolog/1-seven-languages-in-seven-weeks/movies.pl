movie_things(star_wars, luke).
movie_things(star_wars, princessLeia).
movie_things(star_wars, jawas).
movie_things(star_wars, lightsabers).
movie_things(star_wars, storm_troopers).

creature(jawas).

person(luke).
person(princessLeia).
person(darthVader).

bad(darthVader).
bad(storm_troopers).

parent(luke, darkVader).
parent(princessLeia, darkVader).

siblings(X, Y) :- parent(X, Z), parent(Y, Z).

