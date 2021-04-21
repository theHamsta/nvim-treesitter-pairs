; inherits: paren,curly,square,quote

(template_string
  "`" @left
  "`" @right)

(string
  "'" @left
  "'" @right)

(template_substitution
  "${" @left
  "}" @right)

