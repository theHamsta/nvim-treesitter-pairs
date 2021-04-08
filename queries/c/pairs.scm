(preproc_if
  "#if"    @left
  "#endif" @right)

(preproc_ifdef
  "#ifdef" @left
  "#endif" @right)

(preproc_ifdef
  "#ifndef" @left
  "#endif" @right)

(preproc_defined
  "(" @left
  ")" @right)

(compound_statement
  "{" @left
  "}" @right)

(field_declaration_list
  "{" @left
  "}" @right)

(initializer_list
  "{" @left
  "}" @right)

(array_declarator
  "[" @left
  "]" @right)

(parenthesized_expression
  "(" @left
  ")" @right)

(string_literal
  "\"" @left
  "\"" @right)

(parameter_list
  "(" @left
  ")" @right)
