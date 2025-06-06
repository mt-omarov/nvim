local langmapper = require("config.langmapper")

return {
    'Wansmer/langmapper.nvim',
    lazy = false,
    priority = 1, -- High priority is needed if you will use `autoremap()`
    config = function()
        require('langmapper').setup({langmapper})
    end,
}
