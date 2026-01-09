return {
    {
        "https://github.com/rcarriga/nvim-notify",
        opts = {
            stages = "static",
        },
        init = function ()
            vim.notify = require("notify")
        end,
    },
}
