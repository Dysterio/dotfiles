local ls = require("luasnip")
local helpers = require("snippets.csharp.helpers")

ls.add_snippets("cs", {
    ls.snippet("constructor", {
        ls.text_node("public "),
        ls.function_node(helpers.get_file_name),
        ls.text_node({ "()", "{", "", "}" })
    })
})
