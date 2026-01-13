local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("i", "jk", "<ESC>", opts)
-- keymap("n", "<leader>e", ":Ex<cr>", opts)

vim.keymap.set('n', '<C-Up>',    ':resize +1<CR>', opts)
vim.keymap.set('n', '<C-Down>',  ':resize -1<CR>', opts)
vim.keymap.set('n', '<C-Left>',  ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)
