-module(shopping).
-export([list/1]).

list(List) -> [{Item, Quantity * Price} || {Item, Quantity, Price} <- List].
