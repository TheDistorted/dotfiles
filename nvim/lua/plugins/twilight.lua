-- Install twilight.nvim plugin
return {
  {
    "folke/twilight.nvim",
    opts = {
      -- optional configuration settings go here
      dimming = {
        alpha = 0.25,
        color = { "Normal", "#ffffff" },
        term_bg = "#000000",
        inactive = false,
      },
      context = 10,
      treesitter = true,
      expand = { "function", "method", "table", "if_statement" },
      exclude = {},
    },
    config = function(_, opts)
      require("twilight").setup(opts)
    end,
  },
}
