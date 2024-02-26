--none-ls.lua
return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier, -- Use Mason to install prettier
				null_ls.builtins.formatting.misspell, -- Use Mason to install misspell
				null_ls.builtins.formatting.black, -- Use Mason to install black <python
				null_ls.builtins.formatting.isort, -- Use Mason to install isort <python
				null_ls.builtins.diagnostics.rubocop,
				null_ls.builtins.diagnostics.eslint_d,-- Use Mason to install eslint_d
				null_ls.builtins.formatting.rubocop,  -- Use Mason to install rubocop
				null_ls.builtins.completion.spell,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
