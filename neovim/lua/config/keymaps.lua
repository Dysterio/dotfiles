vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("n", "<leader>e", "<CMD>Ex<CR>", { desc = "Open file explorer" })
vim.keymap.set("n", "<leader>w", "<CMD>write<CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>q", "<CMD>quit<CR>", { desc = "Quit" })

