return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            inlay_hints = { enabled = false },
        },
    },
    {
        "LazyVim/LazyVim",
        opts = {
            lsp = {
                inlay_hints = { enabled = false },
            },
        },
    }
}
