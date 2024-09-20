return {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.buttons.val = {
			dashboard.button("p", "󰉋  Find project", ":Telescope projects <CR>"),
			dashboard.button("n", "󰈔  New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("f", "󰈞  Find file", ":Telescope find_files <CR>"),
			dashboard.button("t", "󱎸  Find text", ":Telescope live_grep <CR>"),
			dashboard.button("m", "󰃀  BookMarks", ":Telescope marks <CR>"),
			dashboard.button(
				"e",
				"  Extensions ",
				":Neotree filesystem reveal left | :cd ~/.config/nvim/lua/plugins<CR>"
			),
			dashboard.button("r", "󰥔  Recently used files", ":Telescope oldfiles <CR>"),
			dashboard.button("c", "  Configuration", ":e ~/.config/nvim/lua/plugins/alpha.lua<CR>"),
			dashboard.button("q", "Quit Neovim", ":qa<CR>"),
		}
		-- helper function for utf8 chars
		local function getCharLen(s, pos)
			local byte = string.byte(s, pos)
			if not byte then
				return nil
			end
			return (byte < 0x80 and 1) or (byte < 0xE0 and 2) or (byte < 0xF0 and 3) or (byte < 0xF8 and 4) or 1
		end

		local function applyColors(logo, colors, logoColors)
			dashboard.section.header.val = logo

			for key, color in pairs(colors) do
				local name = "Alpha" .. key
				vim.api.nvim_set_hl(0, name, color)
				colors[key] = name
			end

			dashboard.section.header.opts.hl = {}
			for i, line in ipairs(logoColors) do
				local highlights = {}
				local pos = 0

				for j = 1, #line do
					local opos = pos
					pos = pos + getCharLen(logo[i], opos + 1)

					local color_name = colors[line:sub(j, j)]
					if color_name then
						table.insert(highlights, { color_name, opos, pos })
					end
				end

				table.insert(dashboard.section.header.opts.hl, highlights)
			end
			return dashboard.opts
		end

		require("alpha").setup(applyColors({
			[[             ██▐███████████████████             ]],
			[[             ██▐███████████████████             ]],
			[[       ██▐██████████████████████████████        ]],
			[[       ██▐███████             ██▐███████        ]],
			[[       ██▐███████             ██▐███████        ]],
			[[       ██▐███████                               ]],
			[[       ██▐███████                               ]],
			[[       ██▐███████                               ]],
			[[       ██▐███████                               ]],
			[[       ██▐███████                               ]],
			[[       ██▐███████                               ]],
			[[       ██▐███████                               ]],
			[[       ██▐███████             ██▐███████        ]],
			[[       ██▐███████             ██▐███████        ]],
			[[       ██▐██████████████████████████████        ]],
			[[             ██▐███████████████████             ]],
			[[ ██▐███████  ██▐███████████████████  ██▐███████ ]],
			[[ ██▐███████                          ██▐███████ ]],
			[[ ██▐███████                          ██▐███████ ]],
			[[ ██▐███████                          ██▐███████ ]],
			[[ ██▐███████        ██▐███████        ██▐███████ ]],
			[[ ██▐███████        ██▐███████        ██▐███████ ]],
			[[ ██▐███████        ██▐███████        ██▐███████ ]],
			[[ ██▐███████        ██▐███████        ██▐███████ ]],
			[[ ██▐███████        ██▐███████        ██▐███████ ]],
			[[ ██▐███████  ██▐███████████████████  ██▐███████ ]],
			[[ ██▐███████  ██▐███████  ██▐███████  ██▐███████ ]],
			[[ ██▐███████  ██▐███████  ██▐███████  ██▐███████ ]],
			[[ ██▐███████  ██▐███████  ██▐███████  ██▐███████ ]],
			[[ ██▐███████  ██▐███████  ██▐███████  ██▐███████ ]],
			[[ ██▐███████████████████  ██▐███████████████████ ]],
			[[       ██▐███████              ██▐███████       ]],
			[[       ██▐███████              ██▐███████       ]],
      -- ▐
		}, {
			["w"] = { fg = "#FFFFFF"},
			["c"] = { fg = "#5BE3FE"},
			["b"] = { fg = "#1241C1"},
			["g"] = { fg = "#FFFFFF", bg = "#5CE136"},
			["y"] = { fg = "#FAC138"},
			["r"] = { fg = "#F03B15"},
		}, {
			[[             rygwwwwwwwwwwwwwwwwwcb             ]],
			[[             rygwwwwwwwwwwwwwwwwwcb             ]],
			[[       rygwwwwwwwwwwwwwwwwwwwwwwwwwwwwcb        ]],
			[[       rygwwwwwcb             rygwwwwwcb        ]],
			[[       rygwwwwwcb             rygwwwwwcb        ]],
			[[       rygwwwwwcb                               ]],
			[[       rygwwwwwcb                               ]],
			[[       rygwwwwwcb                               ]],
			[[       rygwwwwwcb                               ]],
			[[       rygwwwwwcb                               ]],
			[[       rygwwwwwcb                               ]],
			[[       rygwwwwwcb                               ]],
			[[       rygwwwwwcb             rygwwwwwcb        ]],
			[[       rygwwwwwcb             rygwwwwwcb        ]],
			[[       rygwwwwwwwwwwwwwwwwwwwwwwwwwwwwcb        ]],
			[[             rygwwwwwwwwwwwwwwwwwcb             ]],
			[[ rygwwwwwcb  rygwwwwwwwwwwwwwwwwwcb  rygwwwwwcb ]],
			[[ rygwwwwwcb                          rygwwwwwcb ]],
			[[ rygwwwwwcb                          rygwwwwwcb ]],
			[[ rygwwwwwcb                          rygwwwwwcb ]],
			[[ rygwwwwwcb        rygwwwwwcb        rygwwwwwcb ]],
			[[ rygwwwwwcb        rygwwwwwcb        rygwwwwwcb ]],
			[[ rygwwwwwcb        rygwwwwwcb        rygwwwwwcb ]],
			[[ rygwwwwwcb        rygwwwwwcb        rygwwwwwcb ]],
			[[ rygwwwwwcb        rygwwwwwcb        rygwwwwwcb ]],
			[[ rygwwwwwcb  rygwwwwwwwwwwwwwwwwwcb  rygwwwwwcb ]],
			[[ rygwwwwwcb  rygwwwwwcb  rygwwwwwcb  rygwwwwwcb ]],
			[[ rygwwwwwcb  rygwwwwwcb  rygwwwwwcb  rygwwwwwcb ]],
			[[ rygwwwwwcb  rygwwwwwcb  rygwwwwwcb  rygwwwwwcb ]],
			[[ rygwwwwwcb  rygwwwwwcb  rygwwwwwcb  rygwwwwwcb ]],
			[[ rygwwwwwwwwwwwwwwwwwcb  rygwwwwwwwwwwwwwwwwwcb ]],
			[[       rygwwwwwcb              rygwwwwwcb       ]],
			[[       rygwwwwwcb              rygwwwwwcb       ]],
		}))
	end,
}
