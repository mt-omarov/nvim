return {
    "folke/noice.nvim",
    opts = function(_, opts)
        opts.routes = opts.routes or {}
        -- Ensure notifications are handled by noice
        table.insert(opts.routes, {
            view = "notify",
            filter = { event = "notify" },
        })
    end,
    keys = {
        -- Override <leader>n to open Noice history instead of Telescope
        {
            "<leader>n",
            function()
                require("noice").cmd("history")
            end,
            desc = "Noice History",
        },
        -- Optional: Open Noice history in a split for better readability
        {
            "<leader>N",
            function()
                require("noice").cmd("history show")
            end,
            desc = "Noice History (Split)",
        },
    },
}
