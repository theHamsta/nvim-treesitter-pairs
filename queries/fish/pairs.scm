; inherits: paren,curly,square,quote

(begin_statement
  "begin" @left
  "end" @right)

(if_statement
  "if" @left
  "end" @right)

(for_statement
  "for" @left
  "end" @right)

(function_definition
  "function" @left
  "end" @right)

(switch_statement
  "switch" @left
  "end" @right)

(while_statement
  "while" @left
  "end" @right)
