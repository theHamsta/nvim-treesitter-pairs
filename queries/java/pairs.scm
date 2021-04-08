(argument_list
  "(" @left
  ")" @right)

(parenthesized_expression
  "(" @left
  ")" @right)

(array_initializer
  "{" @left
  "}" @right)

(class_body
  "{" @left
  "}" @right)

(block
  "{" @left
  "}" @right)

(dimensions
  "[" @left
  "]" @right)

(type_arguments
  "<" @left
  ">" @right)

(type_parameters
  "<" @left
  ">" @right)
