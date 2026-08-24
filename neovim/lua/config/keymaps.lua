vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- File operations
vim.keymap.set("n", "<leader>w", "<CMD>write<CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>q", "<CMD>quit<CR>", { desc = "Quit" })

vim.keymap.set("n", "<A-h>", "<C-o>", { desc = "Go to previous spot" })
vim.keymap.set("n", "<A-l>", "<C-i>", { desc = "Go to next spot" })

-- Line manipulation
vim.keymap.set("n", "<A-j>", "<CMD>m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-k>", "<CMD>m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Backspace
vim.keymap.set("i", "<C-H>", "<C-w>", { desc = "Delete previous word" })

-- Search
vim.keymap.set("n", "<Esc>", "<CMD>nohlsearch<CR>", { desc = "Clear search highlights" })

-- Paste
vim.keymap.set("v", "p", [["_dP]], { desc = "Paste without replacing clipboard" })
