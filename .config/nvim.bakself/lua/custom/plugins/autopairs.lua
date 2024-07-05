-- Auto-completion of bracket/paren/quote pairs
return {
	-- https://github.com/windwp/nvim-autopairs
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	opts = {
		check_ts = true, -- enable treesitter
	},
}
