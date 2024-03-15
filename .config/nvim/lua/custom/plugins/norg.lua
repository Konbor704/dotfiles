return {

	"nvim-neorg/neorg",
	build = ":Neorg sync-parsers",
	dependencies = {
		{ "nvim-lua/plenary.nvim" },
		{ "nvim-neorg/neorg-telescope" },
		{ "laher/neorg-exec" },
		{ "jbyuki/nabla.nvim" },
	},
	config = function()
		require("neorg").setup({
			load = {
				["core.dirman.utils"] = {},
				["core.completion"] = {
					config = {
						engine = "nvim-cmp",
						name = "[Neorg]",
					},
				},
				["core.ui"] = {},
				["core.integrations.treesitter"] = {},
				["core.defaults"] = {}, -- Loads default behaviour
				["core.concealer"] = {
					config = {
						icon_preset = "basic",
						markup_preset = "brave",
						init_open_folds = "never",
					},
				}, -- Adds pretty icons to your documents
				["core.dirman"] = { -- Manages Neorg workspaces
					config = {
						workspaces = {
							main = "~/Neorg/",
							games = "~/Neorg/Games",
							Rust = "~/Neorg/Programming/Rust",
							Math = "~/Neorg/Math/",
							Programming = "~/Neorg/Programming/",
						},
						index = "index.norg",
					},
				},
				["core.esupports.hop"] = {},
				["core.qol.todo_items"] = {},
				["core.integrations.telescope"] = {},
				["external.exec"] = {},
				["core.summary"] = {},
				["core.pivot"] = {},
				["core.itero"] = {},
				["core.promo"] = {},
				["core.esupports.indent"] = {
					config = {
						format_on_escape = true,
					},
				},
				["core.esupports.metagen"] = {
					config = {
						timezone = "implicit-local",
						type = "auto",
						update_date = true,
					},
				},
				["core.tangle"] = {},
				["core.qol.toc"] = {},
				["core.integrations.nvim-cmp"] = {},
				["core.mode"] = {},
				["core.highlights"] = {},
				["core.neorgcmd"] = {},
				-- FIX: Wait for 0.10
				-- ["core.integrations.image"] = {},
				-- ["core.latex.renderer"] = {},
			},
		})
	end,
}
