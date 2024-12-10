return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local lint = require("lint")

		local function eslint_config_exists()
			local configs = { ".eslintrc", ".eslintrc.json", ".eslintrc.js", ".eslintrc.yml", ".eslintrc.yaml" }
			for _, config in ipairs(configs) do
				if vim.fn.filereadable(vim.fn.getcwd() .. "/" .. config) == 1 then
					return true
				end
			end
			return false
		end

		if eslint_config_exists() then
			lint.linters_by_ft = {
				javascript = { "eslint" },
				typescript = { "eslint" },
				javascriptreact = { "eslint" },
				typescriptreact = { "eslint" },
				svelte = { "eslint" },

				python = { "pylint" },
			}
		else
			lint.linters_by_ft = {
				python = { "pylint" },
			}
		end

		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
			group = lint_augroup,
			callback = function()
				lint.try_lint()
			end,
		})

		vim.keymap.set("n", "<leader>l", function()
			lint.try_lint()
		end, { desc = "Trigger linting for current file" })
	end,
}
