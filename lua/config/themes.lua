local M = {}

M.catppuccin = function()
    pcall(vim.notify, "Using catppuccin theme", vim.log.levels.INFO)
    return {
        "catppuccin/nvim",
        lazy = false,
        name = "catppuccin",
        config = function()
            require("catppuccin").setup({
                flavour = "macchiato",
            })
        end
    }
end

M.dracula = function()
    pcall(vim.notify, "Using dracula theme", vim.log.levels.INFO)
    return {
        "Mofiqul/dracula.nvim",
        lazy = false,
        name = "dracula"
    }
end

M.get = function(theme_name)
    if theme_name ~= nil and M[theme_name] then
        return M[theme_name]()
    else
        pcall(vim.notify, "Theme " .. (theme_name~=nil and theme_name or "[nil]")  .. " not found!", vim.log.levels.WARN)
        return M.catppuccin()
    end
end

return M
