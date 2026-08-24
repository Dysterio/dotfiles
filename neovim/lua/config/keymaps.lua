vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- File operations
vim.keymap.set("n", "<leader>w", "<CMD>write<CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>q", "<CMD>quit<CR>", { desc = "Quit" })

vim.keymap.set("n", "<A-h>", "<C-o>", { desc = "Go to previous spot" })
vim.keymap.set("n", "<A-l>", "<C-i>", { desc = "Go to next spot" })

-- Splits
vim.keymap.set("n", "<leader>h", "<CMD>leftabove vsplit<CR>", { desc = "Create split on left" })
vim.keymap.set("n", "<leader>j", "<CMD>split<CR>", { desc = "Create split below" })
vim.keymap.set("n", "<leader>k", "<CMD>aboveleft split<CR>", { desc = "Create split above" })
vim.keymap.set("n", "<leader>l", "<CMD>vsplit<CR>", { desc = "Create split on right" })

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left split" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to lower split" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to upper split" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right split" })

vim.keymap.set('n', '<C-S-h>', '<cmd>vertical resize -2<CR>', { desc = 'Decrease window width' })
vim.keymap.set('n', '<C-S-j>', '<cmd>resize -2<CR>', { desc = 'Decrease window height' })
vim.keymap.set('n', '<C-S-k>', '<cmd>resize +2<CR>', { desc = 'Increase window height' })
vim.keymap.set('n', '<C-S-l>', '<cmd>vertical resize +2<CR>', { desc = 'Increase window width' })

-- Line manipulation
vim.keymap.set("n", "<A-j>", "<CMD>m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-k>", "<CMD>m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Backspace
vim.keymap.set("i", "<C-H>", "<C-w>", { desc = "Delete previous word" })
vim.keymap.set("c", "<C-H>", "<C-w>", { desc = "Delete previous word" })

-- Search
vim.keymap.set("n", "<Esc>", "<CMD>nohlsearch<CR>", { desc = "Clear search highlights" })

-- Paste
vim.keymap.set("v", "p", [["_dP]], { desc = "Paste without replacing clipboard" })
