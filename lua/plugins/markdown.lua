return {
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = { "markdownlint-cli2", "markdown-toc" },

            code = {
                sign = false,
                width = "block",
                right_pad = 1,
            },
            heading = {
                sign = false,
                icons = {},
            },
            checkbox = {
                enabled = false,
            },

            formatters = {
                ["markdown-toc"] = {
                    condition = function(_, ctx)
                        for _, line in ipairs(vim.api.nvim_buf_get_lines(ctx.buf, 0, -1, false)) do
                            if line:find("<!%-%- toc %-%->") then
                                return true
                            end
                        end
                    end,
                },

                ["markdownlint-cli2"] = {
                    condition = function(_, ctx)
                        local diag = vim.tbl_filter(function(d)
                            return d.source == "markdownlint"
                        end, vim.diagnostic.get(ctx.buf))
                        return #diag > 0
                    end,
                },
            },

            formatters_by_ft = {
                ["markdown"] = { "prettier", "markdownlint-cli2", "markdown-toc" },
                ["markdown.mdx"] = { "prettier", "markdownlint-cli2", "markdown-toc" },
            },
        },
    },

    {
        "iamcco/markdown-preview.nvim",
        event = "BufRead",
        build = function()
            vim.fn["mkdp#util#install"]()
        end
    },

    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                marksman = {},
            },
        },
    },

    {
        "mfussenegger/nvim-lint",
        opts = {
            linters_by_ft = {
                markdownlinter = { "markdownlint-cli2" },
            },
            -- disable MD013 (string length)
            linters = {
                markdownlinter = {
                    args = { "--disable", "MD013", "--stdin" }
                }
            }
        },
    },
}
