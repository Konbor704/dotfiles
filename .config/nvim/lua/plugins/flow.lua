return {
  {
    "0xstepit/flow.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("flow").setup_options({
        transparent = true, -- Set transparent background.
        fluo_color = "pink", --  Fluo color: pink, yellow, orange, or green.
        mode = "normal", -- Intensity of the palette: normal, dark, or bright. Notice that dark is ugly!
        aggressive_spell = true, -- Display colors for spell check.
      })
    end,
  },
}
