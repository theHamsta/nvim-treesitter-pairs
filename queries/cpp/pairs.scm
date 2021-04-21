; inherits: curly

(preproc_if
  "#if"    @left
  "#endif" @right)

(preproc_ifdef
  "#ifdef" @left
  "#endif" @right)

(preproc_ifdef
  "#ifndef" @left
  "#endif" @right)
