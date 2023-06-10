; inherits: curly,paren,quote

(for_statement
  "for" @left
  "end" @right)

(if_statement
  "if" @left
  "end" @right)

(function_declaration
  "function" @left
  "end" @right)

(function_definition
  "function" @left
  "end" @right)
