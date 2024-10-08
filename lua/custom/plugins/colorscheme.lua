return {
  'sainnhe/gruvbox-material',
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'rose-pine/neovim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      vim.cmd.colorscheme 'rose-pine'

      -- You can configure highlights by doing something like:
      vim.cmd.hi 'Comment gui=none'

      vim.api.nvim_set_hl(0, 'GitSignsAdd', { link = 'Added' })
      vim.api.nvim_set_hl(0, 'GitSignsAddLn', { link = 'Added' })
      vim.api.nvim_set_hl(0, 'GitSignsAddNr', { link = 'Added' })
      vim.api.nvim_set_hl(0, 'GitSignsChange', { link = 'Changed' })
      vim.api.nvim_set_hl(0, 'GitSignsChangeLn', { link = 'Changed' })
      vim.api.nvim_set_hl(0, 'GitSignsChangeNr', { link = 'Changed' })
      vim.api.nvim_set_hl(0, 'GitSignsChangedelete', { link = 'Removed' })
      vim.api.nvim_set_hl(0, 'GitSignsChangedeleteLn', { link = 'Removed' })
      vim.api.nvim_set_hl(0, 'GitSignsChangedeleteNr', { link = 'Removed' })
      vim.api.nvim_set_hl(0, 'GitSignsDelete', { link = 'Removed' })
      vim.api.nvim_set_hl(0, 'GitSignsDeleteLn', { link = 'Removed' })
      vim.api.nvim_set_hl(0, 'GitSignsDeleteNr', { link = 'Removed' })
      vim.api.nvim_set_hl(0, 'GitSignsTopdelete', { link = 'Removed' })
      vim.api.nvim_set_hl(0, 'GitSignsTopdeleteLn', { link = 'Removed' })
      vim.api.nvim_set_hl(0, 'GitSignsTopdeleteNr', { link = 'Removed' })
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
