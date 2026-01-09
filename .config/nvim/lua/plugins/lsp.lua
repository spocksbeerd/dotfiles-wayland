return {
    {
        "williamboman/mason-lspconfig.nvim",
        event = "VeryLazy",
        dependencies = {
            "neovim/nvim-lspconfig",
        }
    },
    {
        "williamboman/mason.nvim",
        event = "VeryLazy",
        opts = {
            ui = {
                border = "rounded",
                backdrop = 100,
                height = 0.8,
                width = 0.8,
            }
        }
    },
}
