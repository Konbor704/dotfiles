local bufnr = vim.api.nvim_get_current_buf()

vim.keymap.set("n", "<leader>ra", function()
	vim.cmd.RustLsp("codeAction")
end, { silent = true, buffer = bufnr, desc = "Code Action" })

vim.keymap.set("n", "<leader>rl", function()
	vim.cmd.RustLsp({
		"debuggables",
		"last" --[[ optional ]],
	})
end, { silent = true, buffer = bufnr, desc = "Debuggables" })

-- vim.keymap.set("n", "<leader> hv", function()
-- 	vim.cmd.RustLsp({ "hover", "range" })
-- end, { silent = true, buffer = bufnr })
--
-- vim.keymap.set("n", "gh", "<CMD>RustLsp hover range<CR>")

vim.keymap.set("n", "<leader>rd", function()
	vim.cmd.RustLsp("renderDiagnostic")
end, { silent = true, desc = "Rust diagnostics", buffer = bufnr })

vim.keymap.set("n", "<leader>re", function()
	vim.cmd.RustLsp("explainError")
end, { silent = true, desc = "Rust explain error", buffer = bufnr })

vim.keymap.set("n", "<leader>ro", function()
	vim.cmd.RustLsp("openDocs")
end, { silent = true, desc = "Open docs.rs", buffer = bufnr })
