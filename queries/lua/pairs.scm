; inherits: curly

(for_statement
  "for" @left
  "end" @right)

(if_statement
  "if" @left
  "end" @right)

(function_declaration
  "function" @left
  "end" @right)
