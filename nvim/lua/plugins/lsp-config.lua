return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls", -- Lua
					"clangd", -- C/C++
					"omnisharp", -- C#
					"cmake", -- Cmake
					"elixirls", -- Elixir
					"fortls", -- Fortran
					"opencl_ls", -- OpenGL
					"jedi_language_server", -- Python
				},
			})
		end,
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.clangd.setup({})
			lspconfig.omnisharp.setup({})
			lspconfig.cmake.setup({})
			lspconfig.elixirls.setup({})
			lspconfig.fortls.setup({})
			lspconfig.opencl_ls.setup({})
			lspconfig.jedi_language_server.setup({})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {}) -- Shows snipet Of Function Description
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {}) -- Go to Definition
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {}) -- Option to Fiz Unapropriated ERROR Messages
		end,
	},
}
