local bufnr = vim.api.nvim_get_current_buf()

vim.keymap.set("n", "<leader>a", function()
	vim.cmd.RustLsp("codeAction")
end, { silent = true, buffer = bufnr })

vim.keymap.set("n", "<leader> rd", function()
	vim.cmd.RustLsp({
		"debuggables",
		"last" --[[ optional ]],
	})
end, { silent = true, buffer = bufnr })

-- vim.keymap.set("n", "<leader> hv", function()
-- 	vim.cmd.RustLsp({ "hover", "range" })
-- end, { silent = true, buffer = bufnr })
--
-- vim.keymap.set("n", "gh", "<CMD>RustLsp hover range<CR>")

vim.keymap.set("n", "<leader>re", "<CMD>RustLsp explainError<CR>", { silent = true, desc = "Rust explain error" })

vim.keymap.set("n", "<leader>ge", "<CMD>RustLsp renderDiagnostic<CR>", { silent = true, desc = "Rust diagnostics" })
