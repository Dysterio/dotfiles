return {
    {
        "nvim-tree/nvim-web-devicons",
        lazy = true
    },
    {
        "sainnhe/gruvbox-material",
        priority = 1000,
        config = function()
            vim.g.gruvbox_material_disable_italic_comment = 1

            vim.cmd.colorscheme("gruvbox-material")
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
            "lewis6991/gitsigns.nvim"
        },
        opts = {
            options = {
                globalstatus = true
            },
            sections = {
                lualine_a = { "mode" },
                lualine_b = {
                    {
                        function()
                            return vim.b.gitsigns_head or ""
                        end,
                        icon = ""
                    },
                    "diff"
                },
                lualine_c = {
                    {
                        "filetype",
                        icon_only = true,
                        separator = "",
                        padding = { left = 1, right = 0 }
                    },
                    {
                        "filename",
                        newfile_status = true,
                        path = 1,
                        padding = { left = 0 }
                    }
                },
                lualine_x = { "encoding" },
                lualine_y = { "diagnostics" },
                lualine_z = { "progress" }
            }
        }
    }
}
