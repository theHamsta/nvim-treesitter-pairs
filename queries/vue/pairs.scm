; inherits: html

(_
  "{{" @left
  "}}" @right)

(template_element
  (start_tag) @left
  (end_tag)   @right)

(style_element
  (start_tag) @left
  (end_tag)   @right)

(script_element
  (start_tag) @left
  (end_tag)   @right)
