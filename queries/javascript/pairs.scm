(formal_parameters
  "(" @left
  ")" @right)

(arguments
  "(" @left
  ")" @right)

(statement_block
  "{" @left
  "}" @right)

(object
  "{" @left
  "}" @right)

(class_body
  "{" @left
  "}" @right)

(named_imports
  "{" @left
  "}" @right)

(array
  "[" @left
  "]" @right)

(template_string
  "`" @left
  "`" @right)

(string
  "\"" @left
  "\"" @right)

(string
  "'" @left
  "'" @right)

(template_substitution
  "${" @left
  "}" @right)

