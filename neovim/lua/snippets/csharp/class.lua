local ls = require("luasnip")
local helpers = require("snippets.csharp.helpers")

ls.add_snippets("cs", {
    ls.snippet("class", {
        ls.text_node("namespace "),
        ls.function_node(helpers.get_namespace),
        ls.text_node({ ";", "", "" }),

        ls.text_node("public class "),
        ls.function_node(helpers.get_file_name),
        ls.text_node({ "", "{", "", "}" })
    })
})
