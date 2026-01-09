return {
    {
        "NeogitOrg/neogit",
        lazy = true,
        dependencies = {
            "sindrets/diffview.nvim",
        },
        cmd = "Neogit",
        keys = {
            { "<leader>gg", "<cmd>Neogit<cr>", desc = "Show Neogit UI" }
        },
    },
}
