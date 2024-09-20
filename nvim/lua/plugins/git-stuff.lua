return {
    {
        "tpope/vim-fugitive",
    },
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()
        end,
        keys = {
            {
                "<leader>gp",
                ":Gitsigns preview_hunk<CR>",
                mode = { "n" },
                desc = "[p]review hunk from [g]it"
            },
            {
                "<leader>gt",
                ":Gitsigns toggle_current_line_blame<CR>",
                mode = { "n" },
                desc = "[t]oggle the current line blame from [g]it"
            },
        },
    },
}
