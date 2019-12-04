-module(count_ten).
-export([count/0]).

count() -> count(1).

count(10) -> io:write(10);
count(Number) -> io:write(Number), count(Number + 1).
