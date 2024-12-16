vim.opt.number = true  --enable absolute line numbers
vim.wo.relativenumber = true --enable relative line numbers
vim.opt.clipboard:append("unnamedplus")
-- Enable auto indentation
vim.opt.autoindent = true

-- Convert tabs to spaces
vim.opt.expandtab = true

-- Set the number of spaces that a tab counts for
vim.opt.tabstop = 2

-- Set the number of spaces to use for each step of (auto)indent
vim.opt.shiftwidth = 2
--set expandtab
--set tabstop=2
--set softtabstop=2
--set shiftwidth=2
vim.g.mapleader = " "

-- init.lua

-- Load lazy.nvim
require("config.lazy")
require("lazy").setup(require("plugins"))

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<Leader>fg', builtin.live_grep, {})
vim.api.nvim_set_keymap('n', '<leader>ff', ':Telescope find_files<CR>', { noremap = true })

-- Neotree
vim.keymap.set('n', '<Leader>nn', ':Neotree filesystem toggle<CR>', {})
vim.keymap.set('n', '<Leader>nr', ':Neotree filesystem reveal left<CR>', {})
vim.keymap.set('i', '<C-k>','<C-o>k')
vim.keymap.set('i', '<C-j>','<C-o>j')
vim.keymap.set('i', '<C-h>','<C-o>h')
vim.keymap.set('i', '<C-l>','<C-o>l')
require('plugins.keymaps').setup()
