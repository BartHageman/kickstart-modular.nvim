return {
  {
    'numToStr/FTerm.nvim',
    opts= {
      border = 'rounded',
    },
    config = function()
      local fterm = require("FTerm")
      local lazygit = fterm:new({
        ft = 'lazygit', -- You can also override the default filetype, if you want
        cmd = "lazygit",
        dimensions = {
          height = 0.9,
          width = 0.9
        }
      })

      -- Use this to toggle gitui in a floating terminal
      vim.keymap.set('n', '<leader>g', function()
        lazygit:toggle()
      end)
    end

  }
}
