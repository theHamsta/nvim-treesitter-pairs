; inherits: html,curly

(if_statement
  (if_start_expr) @left
  (if_end_expr) @right)

(each_statement
  (each_start_expr) @left
  (each_end_expr) @right)

(await_statement
  (await_start_expr) @left
  (await_end_expr) @right)

(style_element
  (start_tag) @left
  (end_tag)   @right)

(script_element
  (start_tag) @left
  (end_tag)   @right)
