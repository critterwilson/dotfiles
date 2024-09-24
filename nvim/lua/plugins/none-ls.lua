return { -- Wraps command line formatters/linters/etc (think: black) so that they can be used like LSPs
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.diagnostics.mypy.with({
                    extra_args = function()
                        local virtual = os.getenv("VIRTUAL_ENV") or os.getenv("CONDA_PREFIX") or "/usr"
                        return { "--python-executable", virtual .. "/bin/python3" }
                    end,
                }),
                null_ls.builtins.formatting.isort, -- sorts python imports
                null_ls.builtins.formatting.stylua, -- formatting for lua files
                null_ls.builtins.code_actions.gitsigns, -- code actions for gitsigns extension
                null_ls.builtins.code_actions.proselint, -- linting for regular text
                null_ls.builtins.completion.luasnip, -- snippet support for lua
                null_ls.builtins.diagnostics.markdownlint, -- checks markdown syntax
            },
        })

        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
}
