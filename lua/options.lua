-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- Make line numbers default
vim.opt.number = true

-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
vim.opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.opt.clipboard = 'unnamedplus'

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10
vim.opt.laststatus = 3

vim.opt.termguicolors = true

vim.opt.foldmethod = 'expr' -- folding, set to "expr" for treesitter based folding
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()' -- set to "nvim_treesitter#foldexpr()" for treesitter based folding

-- if vim.fn.has 'win32' ~= 0 then
--   vim.cmd [[
--    let &shell='"C:\Program Files\Git\bin\bash.exe"'
--    let &shellcmdflag = '-c'
--    let &shellredir = '>%s 2>&1'
--    set shellquote= shellxescape=
--    " set noshelltemp
--    set shellxquote=
--    let &shellpipe='2>&1| tee'
--  ]]
-- end

if vim.g.neovide then
  local isWindows = vim.loop.os_uname().version:match 'Windows'
  if isWindows then
    vim.g.neovide_refresh_rate = 160
  else
    vim.g.neovide_refresh_rate = 60
  end
  vim.g.neovide_cursor_trail_length = 0.001
  vim.g.neovide_cursor_animation_length = 0.023
  vim.g.neovide_input_use_logo = true
  vim.g.neovide_floating_blur_amount_x = 5.0
  vim.g.neovide_floating_blur_amount_y = 5.0
  vim.g.neovide_remember_window_size = true
  vim.opt.guifont = 'Iosevka Nerd Font:h14'
end

-- vim: ts=2 sts=2 sw=2 et
