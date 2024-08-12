-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Set highlight on search, but clear on pressing <Esc> in normal mode
local function nmap(lhs, rhs, opt)
  opt = opt or {}
  vim.keymap.set('n', lhs, rhs, opt)
end

local function xmap(lhs, rhs, opt)
  opt = opt or {}
  vim.keymap.set('x', lhs, rhs, opt)
end

local function vmap(lhs, rhs, opt)
  opt = opt or {}
  vim.keymap.set('v', lhs, rhs, opt)
end

local function imap(lhs, rhs, opt)
  opt = opt or {}
  vim.keymap.set('i', lhs, rhs, opt)
end

vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
-- Easily void things you're visually pasting over
xmap('<leader>p', '"_dP', {})
-- Keep screen centered when moving around
nmap('n', 'nzzzv', {})
nmap('N', 'Nzzzv', {})
nmap('<C-d>', '<C-d>zz', {})
nmap('<C-u>', '<C-u>zz', {})
nmap('N', 'Nzzzv', {})
nmap('J', 'mzJ`z', {})
-- Add aditional undo moments for punctuation marks
imap(',', ',<c-g>u')
imap('?', '?<c-g>u')
imap('!', '!<c-g>u')
imap('.', '.<c-g>u')

-- Move things around easily by holding alt
-- vmap('<M-j>', ":m '>+1<CR>gv=gv")
-- vmap('<M-k>', ":m '<-2<CR>gv=gv")
-- imap('<M-j>', '<esc>:m .+1<CR>==')
-- imap('<M-k>', '<esc>:m .-2<CR>==')
-- nmap('<M-j>', ':m .+1<CR>==')
-- nmap('<M-k>', ':m .-2<CR>==')

-- Make visual indentation not stupid
vmap('<', '<gv')
vmap('>', '>gv')
-- Quickfix list
nmap('[q', '<cmd>cp<cr>', {desc="Previous [Q]uickfix list item"})
nmap(']q', '<cmd>cn<cr>', {desc="Next [Q]uickfix list item"})
nmap('<leader>co', ':copen<cr>')
nmap('<leader>cc', ':copen<cr>')

vim.keymap.set('n', '<leader>cd', '<CMD>cd %:p:h<CR><CMD>pwd<CR>', { desc = '[C]hange working [D]irectory to current file parent' })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- vim: ts=2 sts=2 sw=2 et
