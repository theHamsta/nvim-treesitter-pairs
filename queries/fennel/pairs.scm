(function_call
  "(" @left
  ")" @right)

(function_definition
  "(" @left
  ")" @right)

(tset
  "(" @left
  ")" @right)

(table
  "{" @left
  "}" @right)

(sequential_table
  "[" @left
  "]" @right)

(string
  "\"" @left
  "\"" @right)

(assignments
  "[" @left
  "]" @right)

(parameters
  "[" @left
  "]" @right)
