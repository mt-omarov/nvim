return {
    "nvim-treesitter/nvim-treesitter",
    opts = {
        highlight = { enable = true },
        indent = { enable = true },
        autotag = { enable = true },
        ensure_installed = {
            "json",
            "yaml",
            "markdown",
            "markdown_inline",
            "bash",
            "lua",
            "vim",
            "dockerfile",
            "gitignore",
            "c",
            "cpp",
            "python",
        },
    },
}
