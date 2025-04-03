local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out,                            "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

local opts = {
    ui = {
        border = "rounded",
    }
}

local plugins = {
    -- {
    --     "ellisonleao/gruvbox.nvim",
    --     priority = 1000,
    --     config = function() require("edisan.plugins.gruvbox") end,
    -- },
    {
        "neanias/everforest-nvim",
        priority = 1000,
        config = function() require("edisan.plugins.everforest") end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        config = function() require("edisan.plugins.treesitter") end,
    },
    {
        "neovim/nvim-lspconfig",
        event = "VeryLazy",
    },
    {
        "williamboman/mason.nvim",
        event = "VeryLazy",
        dependencies = {
            "williamboman/mason-lspconfig.nvim",
        },
    },
    {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        event = "VeryLazy",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        config = function() require("edisan.plugins.telescope") end,
    },
    {
        "hrsh7th/nvim-cmp",
        event = "VeryLazy",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "saadparwaiz1/cmp_luasnip",
        },
    },
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
        event = "VeryLazy",
        dependencies = {
            "rafamadriz/friendly-snippets",
        },
        config = function() require("edisan.plugins.luasnip") end,
    },
    {
        "nvim-lualine/lualine.nvim",
        event = "VeryLazy",
        config = function() require("edisan.plugins.line") end,
    },
    {
        "lewis6991/gitsigns.nvim",
        event = "VeryLazy",
        config = function() require("edisan.plugins.gitsigns") end,
    },
    {
        "numToStr/Comment.nvim",
        event = "VeryLazy",
        config = function() require("edisan.plugins.comment") end,
    },
    {
        "rcarriga/nvim-dap-ui",
        event = "VeryLazy",
        dependencies = {
            "mfussenegger/nvim-dap",
            "leoluz/nvim-dap-go",
            "theHamsta/nvim-dap-virtual-text",
            "nvim-neotest/nvim-nio",
        },
        config = function() require("edisan.plugins.dap") end,
    },
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        event = "VeryLazy",
        config = function() require("edisan.plugins.harpoon") end,
    },
    {
        "folke/trouble.nvim",
        event = "VeryLazy",
        config = function() require("edisan.plugins.trouble") end,
    },
    {
        "tpope/vim-fugitive",
        event = "VeryLazy",
    },
}

require("lazy").setup(plugins, opts)
