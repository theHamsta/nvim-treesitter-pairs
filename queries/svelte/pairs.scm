; inherits: html

(if_statement
  (if_start_expr) @left
  (if_end_expr) @right)

(if_start_expr
  "{" @left
  "}" @right)

(if_end_expr
  "{" @left
  "}" @right)

(each_statement
  (each_start_expr) @left
  (each_end_expr) @right)

(each_start_expr
  "{" @left
  "}" @right)

(each_end_expr
  "{" @left
  "}" @right)

(await_statement
  (await_start_expr) @left
  (await_end_expr) @right)

(await_start_expr
  "{" @left
  "}" @right)

(await_end_expr
  "{" @left
  "}" @right)

(style_element
  (start_tag) @left
  (end_tag)   @right)

(script_element
  (start_tag) @left
  (end_tag)   @right)
