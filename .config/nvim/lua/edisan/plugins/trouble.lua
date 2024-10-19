require("trouble").setup();

local opts = {}
vim.api.nvim_set_keymap("n", "<leader>tr", "<cmd>Trouble diagnostics toggle focus=true<cr>", opts)
vim.api.nvim_set_keymap("n", "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", opts)
vim.api.nvim_set_keymap("n", "<leader>cs", "<cmd>Trouble symbols toggle focus=false<cr>", opts)
vim.api.nvim_set_keymap("n", "<leader>cl", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>", opts)
vim.api.nvim_set_keymap("n", "<leader>xL", "<cmd>Trouble loclist toggle<cr>", opts)
vim.api.nvim_set_keymap("n", "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", opts)
