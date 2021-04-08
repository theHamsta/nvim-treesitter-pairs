(use_list
  "{" @left
  "}" @right)

(declaration_list
  "{" @left
  "}" @right)

(field_declaration_list
  "{" @left
  "}" @right)

(field_initializer_list
  "{" @left
  "}" @right)

(block
  "{" @left
  "}" @right)

(match_block
  "{" @left
  "}" @right)

(parameters
  "(" @left
  ")" @right)

(tuple_expression
  "(" @left
  ")" @right)

(parenthesized_expression
  "(" @left
  ")" @right)

(closure_parameters
  "|" @left
  "|" @right)

(arguments
  "(" @left
  ")" @right)

(type_arguments
  "<" @left
  ">" @right)

(type_parameters
  "<" @left
  ">" @right)

(array_type
  "[" @left
  "]" @right)

(string_literal
  "\"" @left
  "\"" @right)
