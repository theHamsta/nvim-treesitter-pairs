(for_in_statement
  "for" @left
  "end" @right)

(if_statement
  "if" @left
  "end" @right)

(function
  "function" @left
  "end" @right)

(table
  "{" @left
  "}" @right)
