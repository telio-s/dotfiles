return {
	"catppuccin/nvim",
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
		require("catppuccin").setup({
			flavour = "macchiato", -- latte, frappe, macchiato, mocha
			transparent_background = true,
		})
		-- load the colorscheme here
		vim.cmd([[colorscheme catppuccin]])
	end,
}
