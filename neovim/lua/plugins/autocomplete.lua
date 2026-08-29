return {
    "saghen/blink.cmp",
    version = "1.*", -- V2 is under active development with many breaking changes
    opts = {
        keymap = {
            preset = "none",

            ["<C-Space>"] = { "show", "show_documentation", "hide_documentation" },
            ["<CR>"] = { "accept", "fallback" },

            ["<C-k>"] = { "show_signature", "hide_signature", "fallback" },

            ["<M-j>"] = { "select_next", "fallback" },
            ["<M-k>"] = { "select_prev", "fallback" },
            ["<M-l>"] = { function(cmp) cmp.scroll_documentation_down(1) end },
            ["<M-h>"] = { function(cmp) cmp.scroll_documentation_up(1) end }
        },
        signature = { enabled = true },
        cmdline = {
            keymap = {
                preset = "none",

                ["<C-Space>"] = { "show", "show_documentation", "hide_documentation" },
                ["<CR>"] = { "accept", "fallback" },

                ["<C-k>"] = { "show_signature", "hide_signature", "fallback" },

                ["<M-j>"] = { "select_next", "fallback" },
                ["<M-k>"] = { "select_prev", "fallback" },
                ["<M-l>"] = { function(cmp) cmp.scroll_documentation_down(1) end },
                ["<M-h>"] = { function(cmp) cmp.scroll_documentation_up(1) end }
            },

            completion = {
                menu = {
                    auto_show = true
                }
            }
        }
    }
}
