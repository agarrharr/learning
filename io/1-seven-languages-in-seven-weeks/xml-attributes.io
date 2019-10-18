Builder := Object clone

Builder indent := ""

Operator addAssignOperator(":", "addAttribute")

Builder addAttribute := method(
)

curlyBrackets := method(
  call message arguments(argument, self doMessage(argument)) join(" ")
)

Builder forward := method(
  writeln(indent, "<", call message name, ">")
  call message arguments foreach(arg,
       indent = indent .. "  "
       content := self doMessage(arg);
       if(content type == "Sequence", writeln(indent, content))
       indent = indent exclusiveSlice(2)
  )
  writeln(indent, "</", call message name, ">")
)

Builder ul(
  li("Io"),
  li("Lua"),
  book({"author": "Tate"}, "Seven Languages in Seven Weeks")
  li("JavaScript")
)
