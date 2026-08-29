vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- File operations
vim.keymap.set("n", "<leader>w", "<CMD>write<CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>q", "<CMD>quit<CR>", { desc = "Quit" })

vim.keymap.set("n", "<A-h>", "<C-o>", { desc = "Go to previous spot" })
vim.keymap.set("n", "<A-l>", "<C-i>", { desc = "Go to next spot" })

-- Splits
vim.keymap.set("n", "<leader>h", "<CMD>leftabove vsplit<CR>", { desc = "Create window on left" })
vim.keymap.set("n", "<leader>j", "<CMD>rightbelow split<CR>", { desc = "Create window below" })
vim.keymap.set("n", "<leader>k", "<CMD>leftabove split<CR>", { desc = "Create window above" })
vim.keymap.set("n", "<leader>l", "<CMD>rightbelow vsplit<CR>", { desc = "Create window on right" })

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to lower window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to upper window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

vim.keymap.set("n", "<C-S-h>", "<cmd>vertical resize -2<CR>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-S-j>", "<cmd>resize -2<CR>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-S-k>", "<cmd>resize +2<CR>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-S-l>", "<cmd>vertical resize +2<CR>", { desc = "Increase window width" })

local function swap_window(direction)
    local current_win = vim.api.nvim_get_current_win()

    vim.cmd("wincmd " .. direction)
    local target_win = vim.api.nvim_get_current_win()
    if current_win == target_win then
        return
    end

    local current_buf = vim.api.nvim_win_get_buf(current_win)
    local target_buf = vim.api.nvim_win_get_buf(target_win)

    vim.api.nvim_win_set_buf(current_win, target_buf)
    vim.api.nvim_win_set_buf(target_win, current_buf)
    vim.api.nvim_set_current_win(target_win)
end

vim.keymap.set("n", "<C-M-h>", function() swap_window("h") end, { desc = "Swap buffer left" })
vim.keymap.set("n", "<C-M-j>", function() swap_window("j") end, { desc = "Swap buffer down" })
vim.keymap.set("n", "<C-M-k>", function() swap_window("k") end, { desc = "Swap buffer up" })
vim.keymap.set("n", "<C-M-l>", function() swap_window("l") end, { desc = "Swap buffer right" })

-- Line manipulation
vim.keymap.set("n", "<A-j>", "<CMD>m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-k>", "<CMD>m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Backspace
vim.keymap.set("i", "<C-BS>", "<C-w>", { desc = "Delete previous word" })
vim.keymap.set("c", "<C-BS>", "<C-w>", { desc = "Delete previous word" })

-- Search
vim.keymap.set("n", "<Esc>", "<CMD>nohlsearch<CR>", { desc = "Clear search highlights" })

-- Paste
vim.keymap.set("v", "p", [["_dP]], { desc = "Paste without replacing clipboard" })

-- LSP
vim.keymap.set("n", "<M-CR>", function() vim.lsp.buf.code_action() end, { desc = "Open code action menu" });
vim.keymap.set("n", "<leader>d", function() vim.diagnostic.open_float() end, { desc = "View diagnostic" });
vim.keymap.set("n", "]d", function() vim.diagnostic.jump({ count = 1, float = true }) end, { desc = "Jump to next diagnostic" });
vim.keymap.set("n", "[d", function() vim.diagnostic.jump({ count = -1, float = true }) end, { desc = "Jump tp previos diagnostic" });
