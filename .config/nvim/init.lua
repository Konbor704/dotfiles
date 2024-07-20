-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local theme = require("last-color").recall() or "default"
vim.cmd.colorscheme(theme)
