return {
  -- A heavily modified fork of rust-tools
  "mrcjkb/rustaceanvim",
  version = "^3", -- Recommended
  dependencies = {
    "nvim-lua/plenary.nvim",
    "mfussenegger/nvim-dap",
  },
  ft = { "rust" },
}
