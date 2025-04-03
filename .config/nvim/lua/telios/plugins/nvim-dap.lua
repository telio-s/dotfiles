return {
	"mfussenegger/nvim-dap",
	init = function()
		local keymap = vim.keymap
		-- Nvim DAP
		keymap.set("n", "<Leader>du", function()
			local widgets = require("dap.ui.widgets")
			local sidebar = widgets.sidebar(widgets.scopes)
			-- sidebar.open()
			sidebar.toggle()
		end, { desc = "Open ui debugging sidebar" })
		keymap.set("n", "<Leader>db", "<cmd>DapToggleBreakpoint<CR>", { desc = "Debugger toggle breakpoint" })
		keymap.set("n", "<Leader>ds", "<cmd>DapShowLog<CR>", { desc = "Show Log" })
		keymap.set("n", "<Leader>dc", "<cmd>DapContinue<CR>", { desc = "Debugger continue" })
		keymap.set("n", "<Leader>dr", "<cmd>DapToggleRepl<CR>", { desc = "Toggle Repl" })
		keymap.set("n", "<Leader>dv", "<cmd>DapStepOver<CR>", { desc = "Debugger step over" })
		keymap.set("n", "<Leader>di", "<cmd>DapStepInto<CR>", { desc = "Debugger step into" })
		keymap.set("n", "<Leader>do", "<cmd>DapStepOut<CR>", { desc = "Debugger step out" })
		keymap.set("n", "<Leader>dt", "<cmd>DapTerminate<CR>", { desc = "Debugger terminate" })
		keymap.set("n", "<Leader>dd", "<cmd>DapDisconnect<CR>", { desc = "Debugger disconnect" })
	end,
}
