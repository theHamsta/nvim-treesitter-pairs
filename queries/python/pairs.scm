(dictionary
  "{" @left
  "}" @right)

(parameters
  "(" @left
  ")" @right)

(argument_list
  "(" @left
  ")" @right)

(if_statement
  "if" @left
  (else_clause "else" @right))
