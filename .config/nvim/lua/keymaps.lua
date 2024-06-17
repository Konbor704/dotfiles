-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- FIX: Plugins keymaps

-- Colorscheme
vim.keymap.set("n", "<leader>tt", ":Telescope colorscheme<CR>", { desc = "Themes" })

-- Undotree
-- vim.keymap.set("n", "<leader>tu", vim.cmd.UndotreeToggle, { desc = "Undotree Toggle" })

-- Norg modules
-- vim.keymap.set("n", "<localleader>x", ":Neorg exec cursor<CR>", { silent = true, desc = "Exec Cursor" }) -- just this block or blocks within heading section
-- vim.keymap.set("n", "<localleader>X", ":Neorg exec current-file<CR>", { silent = true, desc = "Exec file" }) -- whole file

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Mini Files
vim.keymap.set("n", "-", function()
	MiniFiles.open()
end, { desc = "Mini Files" })
-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

local api = vim.api

api.nvim_create_augroup("onenter", { clear = true })
-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

api.nvim_create_autocmd("VimEnter", {
	desc = "Enables Transparent Background",
	group = "onenter",
	command = "TransparentEnable",
})

-- api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
-- 	group = "onenter",
-- 	pattern = "*.norg",
-- 	callback = function()
-- 		require("nabla").enable_virt()
-- 	end,
-- })

api.nvim_create_autocmd("BufWinEnter", {
	pattern = { "*.norg", "*.md" },
	callback = function()
		vim.opt.textwidth = 110
		vim.opt.colorcolumn = "+1"
	end,
})
