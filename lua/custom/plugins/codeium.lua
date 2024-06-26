return {
  "Exafunction/codeium.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
  },
  config = function()
    require("codeium").setup({})
  end,
}


-- return {
--   "Exafunction/codeium.vim",
--   --"Exafunction/codeium.nvim",
--   event = "InsertEnter",
--   -- dependencies = {
--   --   "nvim-lua/plenary.nvim",
--   --   "hrsh7th/nvim-cmp",
--   -- },
--   config = function()
--     vim.g.codeium_disable_bindings = 1
--     --require("codeium").setup({})
--     vim.keymap.set('i', '<C-g>', function () return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
--     vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
--     vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
--     vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
--   end
-- }
