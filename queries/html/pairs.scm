(start_tag
  "<" @left
  ">" @right)

(end_tag
  "</" @left
  ">" @right)

(self_closing_tag
  "<" @left
  "/>" @right)

(quoted_attribute_value
  "\"" @left
  "\"" @right)

(element
  (start_tag) @left
  (end_tag)   @right)
