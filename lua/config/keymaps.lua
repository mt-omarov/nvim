vim.keymap.set("n", "<leader>uh", function()
    vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
    vim.notify(
        "Inlay hints " .. (vim.lsp.inlay_hint.is_enabled() and "enabled" or "disabled"),
        vim.log.levels.INFO
    )
end, { desc = "Toggle Inlay Hints" })
