return {
	{
		"rust-lang/rust.vim",
		ft = "rust",
		enable = "false",
		config = function()
			vim.g.rustfmt_autosave = 1
		end,
	},
}
