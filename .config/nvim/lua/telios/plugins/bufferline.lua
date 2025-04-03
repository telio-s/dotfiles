return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	opts = {
		-- highlights = {
		-- 	fill = {
		-- 		fg = "#24273a",
		-- 		bg = "#24273a",
		-- 	},
		-- 	separator = {
		-- 		fg = "none",
		-- 	},
		-- 	separator_selected = {
		-- 		fg = "none",
		-- 	},
		-- 	separator_visible = {
		-- 		fg = "none",
		-- 	},
		-- },
		options = {
			mode = "buffers",
			separator_style = "thin",
			offsets = {
				{ filetype = "NvimTree", text_align = "left" },
			},
			themable = true,
		},
	},
	-- config = function()
	-- 	local keymap = vim.keymap
	--
	-- 	keymap.set("n", "<leader>bn", "<cmd>bnext<CR>", { desc = "Restore session for cwd" }) -- restore last workspace session for current directory
	-- end,
}
