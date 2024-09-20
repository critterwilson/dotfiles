return {
	"chrisgrieser/nvim-chainsaw",
	config = function()
		require("chainsaw").setup()
	end,
	keys = {
		{
      "<leader>lv",
      "lua: require('chainsaw').variableLog()",
      mode = { "n" },
      desc = "Use chainsaw to [l]og a [v]ariable"
    },
		{
      "<leader>lv",
      "lua: require('chainsaw').variableLog()",
      mode = { "n" },
      desc = "Use chainsaw to [l]og the [t]ype of a variable"
    },
		{
      "<leader>la",
      "lua: require('chainsaw').assertLog()",
      mode = { "n" },
      desc = "Use chainsaw to [l]og an [a]ssertion"
    },
		{
      "<leader>le",
      "lua: require('chainsaw').emojiLog()",
      mode = { "n" },
      desc = "Use chainsaw to [l]og an [e]moji"
    },
		{
      "<leader>lr",
      "lua: require('chainsaw').removeLogs()",
      mode = { "n" },
      desc = "Use chainsaw to [r]emove all [l]ogs"
    },
	},
}
