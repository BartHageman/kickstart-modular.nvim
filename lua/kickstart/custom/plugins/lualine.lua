--return {}
return {
  {
    'nvim-lualine/lualine.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      options = {
        theme = 'rose-pine',
        section_separators = { left = '', right = '' },
        -- section_separators = { left = '', right = ''},
        -- component_separators = { left = '·', right = '·'}
        component_separators = { left = '', right = '' },
      },
      sections = {
        lualine_c = { 'harpoon2' },
      },
    },
  },
}
