return {
    "nvim-telescope/telescope.nvim",
    version = "*",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    keys = {
        { "<leader>ff", "<CMD>Telescope find_files<CR>", "n", desc = "Find file" },
        { "<leader>fg", "<CMD>Telescope live_grep<CR>", "n", desc = "Find text" },
        { "<leader>fb", "<CMD>Telescope buffers<CR>", "n", desc = "Find buffer" },
        { "<leader>fh", "<CMD>Telescope help_tags<CR>", "n", desc = "Find help" },
        { "<leader>f*", "<CMD>Telescope builtin<CR>", "n", desc = "View pickers" }
    },
    opts = {
        defaults = {
            sorting_strategy = "ascending",
            layout_strategy = "vertical",
            layout_config = {
                preview_height = 0.6,
                vertical = {
                    prompt_position = "top",
                    mirror = true
                }
            }
        }
    }
}
