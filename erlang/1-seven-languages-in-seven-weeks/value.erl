-module(value).
-export([value/2]).

value([{Keyword, Value} | _], Keyword) -> Value;
value([_ | Tail], Keyword) -> value(Tail, Keyword).
