return {
  {
    'ThePrimeagen/harpoon',
    config = function()
      for i = 1, 9 do
        vim.keymap.set('n', '<A-' .. i .. '>', function()
          require('harpoon.ui').nav_file(i)
        end, { desc = 'Harpoon to file #' .. i })
      end
      vim.keymap.set('n', '<A-a>', require('harpoon.mark').add_file, { desc = 'Harpoon Add File' })
      vim.keymap.set('n', '<A-e>', require('harpoon.ui').toggle_quick_menu, { desc = 'Harpoon Open UI' })
    end,
  },
}
