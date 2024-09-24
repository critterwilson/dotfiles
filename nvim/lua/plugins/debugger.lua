return {
	{
		"rcarriga/nvim-dap-ui",
		dependencies = "mfussenegger/nvim-dap",
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")
			dapui.setup()
			dap.listeners.after.event_initialized["dapui_config"] = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated["dapui_config"] = function()
				dapui.close()
			end
			dap.listeners.before.event_exited["dapui_config"] = function()
				dapui.close()
			end
		end,
		keys = {
			{
				"<leader>dt",
				":DapUiToggle<CR>",
				mode = { "n" },
				desc = "[t]oggle the [d]ebugger",
			},
			{
				"<leader>db",
				":DapToggleBreakpoint<CR>",
				mode = { "n" },
				desc = "Toggle a [b]reakpoint for the [d]ebugger",
			},
			{
				"<leader>dc",
				":DapContinue<CR>",
				mode = { "n" },
				desc = "[c]ontinue to use the [d]ebugger (i.e. go into debug mode)",
			},
			{
				"<leader>dr",
				":lua require('dapui').open({reset = true})<CR>",
				mode = { "n" },
				desc = "[r]eset the [d]ebugger",
			},
		},
	},
	{
		"mfussenegger/nvim-dap",
	},
	{
		"mfussenegger/nvim-dap-python",
		ft = "python",
		dependencies = {
			"mfussenegger/nvim-dap",
			"rcarriga/nvim-dap-ui",
			"nvim-neotest/nvim-nio",
		},
		config = function(_, opts)
			local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python3"
			require("dap-python").setup(path)
		end,
		keys = {
			{
				"<leader>dn",
				":lua require('dap-python').test_method()<CR>",
				mode = { "n" },
				desc = "Use [d]ebugger to test the current python method",
			},
			{
				"<leader>df",
				":lua require('dap-python').test_class()<CR>",
				mode = { "n" },
				desc = "Use [d]ebugger to test the current python class",
			},
			{
				"<leader>ds",
				"<ESC>:lua require('dap-python').debug_selection()<CR>",
				mode = { "v" },
				desc = "[d]ebug the current selection",
			},
		},
	},
}
