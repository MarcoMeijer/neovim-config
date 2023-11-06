(mod (identifier) @module)
(path (identifier) @module "::")
(number) @number
(type_identifier) @type
(builtin_type) @type.builtin
(string) @string
(line_comment) @comment

(call_expression (identifier) @function.call)
(function_definition (identifier) @function)

"(" @punctuation.bracket
")" @punctuation.bracket
"{" @punctuation.bracket
"}" @punctuation.bracket

"mod" @keyword
"type" @keyword
"fn" @keyword.function
"use" @keyword
"let" @keyword
"as" @keyword
"extern" @keyword
"struct" @keyword


[
  "if"
] @conditional

[
  "while"
] @repeat

