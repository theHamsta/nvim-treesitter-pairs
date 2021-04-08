(import_spec_list
  "(" @left
  ")" @right)

(parameter_list
  "(" @left
  ")" @right)

(argument_list
  "(" @left
  ")" @right)

(type_conversion_expression
  "(" @left
  ")" @right)

(interpreted_string_literal
  "\"" @left
  "\"" @right)

(map_type
  "[" @left
  "]" @right)

(slice_type
  "[" @left
  "]" @right)

(block
  "{" @left
  "}" @right)

(field_declaration_list
  "{" @left
  "}" @right)
