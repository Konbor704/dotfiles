return {
	-- A heavily modified fork of rust-tools
	"mrcjkb/rustaceanvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"mfussenegger/nvim-dap",
	},
	init = function()
		vim.g.rustaceanvim = {}
	end,
	ft = { "rust" },
}
