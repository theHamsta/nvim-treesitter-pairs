(environment
  begin: (begin) @left
  end: (end) @right)

(_
  "{" @left
  "}" @right)

(_
  .
  "$" @left
  "$" @right
  .)

(_
  "\\[" @left
  "\\]" @right)

(_
  "\\(" @left
  "\\)" @right)
