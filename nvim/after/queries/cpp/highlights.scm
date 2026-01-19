; inherits: c

; Keep C++ namespace keywords aligned with @keyword.
(namespace_definition
  "namespace" @keyword)

(namespace_alias_definition
  "namespace" @keyword)

; Treat template angle brackets as operators to match VS Code.
(template_parameter_list
  "<" @operator
  ">" @operator)

(template_argument_list
  "<" @operator
  ">" @operator)
