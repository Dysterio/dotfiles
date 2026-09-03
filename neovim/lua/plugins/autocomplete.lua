return {
    {
        "saghen/blink.cmp",
        version = "1.*", -- V2 is under active development with many breaking changes
        dependencies = {
            "L3MON4D3/LuaSnip",
            version = "v2.*"
        },
        opts = {
            keymap = {
                preset = "none",

                ["<C-Space>"] = { "show", "show_documentation", "hide_documentation" },
                ["<M-CR>"] = { "accept", "fallback" },

                ["<C-k>"] = { "show_signature", "hide_signature", "fallback" },

                ["<M-j>"] = { "select_next", "fallback" },
                ["<M-k>"] = { "select_prev", "fallback" },
                ["<M-l>"] = { function(cmp) cmp.scroll_documentation_down(1) end },
                ["<M-h>"] = { function(cmp) cmp.scroll_documentation_up(1) end }
            },
            signature = { enabled = true },
            cmdline = {
                keymap = {
                    preset = "inherit",
                },

                completion = {
                    menu = {
                        auto_show = function (_)
                            return vim.fn.getcmdtype() == ":"
                        end
                    }
                }
            },
            snippets = { preset = "luasnip" },

            sources = {
                default = { 'lsp', 'path', 'snippets', 'buffer' }
            },
        },
    },
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
        config = function()
            require("luasnip.loaders.from_lua").load({
                paths = { vim.fn.stdpath("config") .. "/lua/snippets" }
            })
        end,
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {}
    }
}
