return {
	{
		"folke/zen-mode.nvim",
		opts = {
			window = {
				backdrop = 1,
				width = 120,
			},
			plugins = {
				options = {
					enabled = true,
				},
			},
			vim.keymap.set("n", "<leader>zz", function()
				require("zen-mode").toggle()
			end, { desc = "Zen Mode toggle" }),
		},
	},
}
