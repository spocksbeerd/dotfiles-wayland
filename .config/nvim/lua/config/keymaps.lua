local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("i", "jk", "<ESC>", opts)
vim.keymap.set("n", "<leader>e", ":Ex<cr>", opts)

vim.keymap.set("n", "<C-Up>",    ":resize +1<CR>", opts)
vim.keymap.set("n", "<C-Down>",  ":resize -1<CR>", opts)
vim.keymap.set("n", "<C-Left>",  ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)

vim.keymap.set("x", "p", '"_dP', opts)
vim.keymap.set("x", "P", '"_dP', opts)
