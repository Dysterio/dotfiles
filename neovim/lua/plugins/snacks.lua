return {
    "folke/snacks.nvim",
    priority = 1000,
    version = "*",
    lazy = false,
    opts = {
        bigfile = { enabled = true },
        dashboard = { enabled = true },
        explorer = {
            enabled = true,
            trash = true
        },
        gitbrowse = { enabled = true },
        indent = {
            enabled = true,
            only_current = true,
            animate = {
                enabled = false
            },
        },
        picker = {
            enabled = true,
            sources = {
                explorer = {
                    hidden = true,
                    layout = {
                        cycle = false
                    },
                    actions = {
                        preview_file = function(picker, item)
                            if item.dir then
                                picker:action("confirm")
                            else
                                picker:action("edit")
                                picker:focus("list")
                            end
                        end,
                        open_file = function(picker, item)
                            if item.dir then
                                picker:action("confirm")
                            else
                                picker:action("edit")
                                picker:close()
                            end
                        end
                    },
                    win = {
                        list = {
                            keys = {
                                ["l"] = "preview_file",
                                ["<CR>"] = "open_file"
                            }
                        }
                    }
                }
            }
        },
        quickfile = { enabled = true },
        terminal = { enabled = true }
    },
    keys = {
        {
            "<leader>e",
            function() 
                local explorer = Snacks.picker.get({ source = "explorer" })[1]
                if not explorer then
                    Snacks.explorer()
                elseif explorer:is_focused() then
                    explorer:close()
                else
                    explorer:focus()
                end
            end,
            desc = "Open file explorer (Snacks)"
        },

        { "<leader>ff", function() Snacks.picker.files() end, desc = "Find file (Snacks)" },
        { "<leader>ft", function() Snacks.picker.grep() end, desc = "Find text (Snacks)" },
        { "<leader>fh", function() Snacks.picker.help() end, desc = "Find help page (Snacks)" },
        { "<leader>gb", function() Snacks.picker.git_branches() end, desc = "View git branch (Snacks)" },
        { "<leader>gs", function() Snacks.picker.git_status() end, desc = "View changed git files (Snacks)" },
        { "<leader>gh", function() Snacks.gitbrowse.open() end, desc = "View current line in remote repository (Snacks)" }
    }
}

