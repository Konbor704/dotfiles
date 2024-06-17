return {
	{
		-- amongst your other plugins
		-- {'akinsho/toggleterm.nvim', version = "*", config = true}
		-- or
		{
			"akinsho/toggleterm.nvim",
			version = "*",
			opts = {
				vim.keymap.set("n", "<F6>", ":ToggleTerm<CR>", { desc = "Toggle Terminal" }),
			},
		},
	},
}
