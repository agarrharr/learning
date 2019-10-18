Builder := Object clone

Builder indent := ""

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
  li("JavaScript")
)
