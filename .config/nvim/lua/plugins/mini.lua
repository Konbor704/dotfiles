return {
  {
    "echasnovski/mini.nvim",
    version = false,
    config = function()
      require("mini.hipatterns").setup()
      require("mini.files").setup()
      require("mini.icons").setup()
    end,
  },
}
