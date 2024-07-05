return {
	-- A heavily modified fork of rust-tools
	"mrcjkb/rustaceanvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"mfussenegger/nvim-dap",
	},
	init = function()
		vim.g.rustaceanvim = {
			server = {
				on_attach = function(client, bufnr)
					vim.keymap.set("n", "<leader>h", function()
						vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
					end)
				end,
			},
		}
	end,
	ft = { "rust", "*.ers" },
}
