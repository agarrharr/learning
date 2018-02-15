Js.log("Hello, BuckleScript and Reason!");

let foo = "Hello";

Js.log(foo);

let add = (x, ~y) => x + y;

let add2 = add(2);

add2(~y=10) |> Js.log;

add(1, ~y=2) |> Js.log;

type coin =
  | Quarter(int)
  | Dime
  | Nickel
  | Penny;

let my_coin = Quarter(4);

let message = switch (my_coin) {
| Quarter(quantity) => float_of_int(quantity) *. 0.25
| Dime => 0.1
| Nickel => 0.5
| Penny => 0.01
};

message |> Js.log;

type person = {
    age: int,
    name: string
  };

let me = {
    age: 5,
    name: "Big Reason"
  };
