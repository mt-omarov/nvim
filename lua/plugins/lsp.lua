return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                clangd = {
                    mason = false,

                    cmd = {
                        "clangd",
                        "--background-index",
                        "--clang-tidy",
                        "--header-insertion=never",
                        "--completion-style=detailed",
                        "--query-driver=/usr/bin/clang*,/usr/bin/gcc*",
                        "--offset-encoding=utf-16"
                    },

                    init_options = {
                        clangdFileStatus = true,
                        usePlaceHolders = true,
                        completeUnimported = false
                    },
                },
            },
        }
    }
}
