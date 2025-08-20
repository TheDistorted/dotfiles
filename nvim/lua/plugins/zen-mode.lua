return {
  'folke/zen-mode.nvim',
  config = function()
    require('zen-mode').setup({
      window = {
        width = 70,
        options = {
          number = false,
          signcolumn = 'no',
          relativenumber = false,
        },
      },
      plugins = {
        twilight = { enabled = true },
        gitsigns = { enabled = false },
      },
    })
  end,
}
