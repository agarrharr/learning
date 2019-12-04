-module(number_of_words).
-export([num/1]).

num([]) -> 0;
num(Sentence) -> count(Sentence, 1).

count([], Count) -> Count;
count([32 | Tail], Count) -> count(Tail, Count + 1);
count([_ | Tail], Count) -> count(Tail, Count).

