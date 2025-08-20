return {
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
      'lewis6991/gitsigns.nvim',     -- optional, for git status integration
    },
    init = function()
      -- Disable automatic setup if you want to configure manually later
      vim.g.barbar_auto_setup = false
    end,
    opts = {
      -- Put your barbar.nvim configuration options here
      -- For example:
      animation = true,
      insert_at_start = true,
      -- other options...
    },
    version = '^1.0.0', -- optional: keep updates only in 1.x versions
  }
}
