return { -- Easy comments for debugging
    "chrisgrieser/nvim-chainsaw",
    config = function()
        require("chainsaw").setup({
            marker = "🪚",

            ---@type string|false -- false to disable
            logHighlightGroup = false,

            -- emojis used for `emojiLog`
            logEmojis = { "🔵", "🟩", "⭐", "⭕", "💜", "🔲" },
        })
    end,
    keys = {
        {
            "<leader>lv",
            ":lua require('chainsaw').variableLog()<CR>",
            mode = { "n" },
            desc = "Use chainsaw to [l]og a [v]ariable",
        },
        {
            "<leader>lt",
            ":lua require('chainsaw').typeLog()<CR>",
            mode = { "n" },
            desc = "Use chainsaw to [l]og the [t]ype of a variable",
        },
        {
            "<leader>la",
            ":lua require('chainsaw').assertLog()<CR>",
            mode = { "n" },
            desc = "Use chainsaw to [l]og an [a]ssertion",
        },
        {
            "<leader>le",
            ":lua require('chainsaw').emojiLog()<CR>",
            mode = { "n" },
            desc = "Use chainsaw to [l]og an [e]moji",
        },
        {
            "<leader>lr",
            ":lua require('chainsaw').removeLogs()<CR>",
            mode = { "n" },
            desc = "Use chainsaw to [r]emove all [l]ogs",
        },
    },
}
