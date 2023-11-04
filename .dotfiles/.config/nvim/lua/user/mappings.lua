-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    ["<F6>"] = {"<cmd>CompilerOpen<cr>"},
    ["<S-F6>"] = {"<cmd>CompilerToggleResults<cr>"},
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>mt"] = {"<cmd>MarkdownPreviewToggle<cr>", desc="Markdown toggle"},
    ["<leader>lp"] = {"<cmd>setlocal spell spelllang=pl<cr>", desc="Polish"},
    ["<leader>le"] = {"<cmd>setlocal spell spelllang=en_us<cr>", desc="English"},
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
