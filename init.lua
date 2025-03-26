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

-- wrap
vim.opt.wrap = true

-- set autosave
vim.g.autosave_enabled = true

-- init.lua

-- Load lazy.nvim
require("config.lazy")
require("lazy").setup(require("plugins"))

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.api.nvim_set_keymap('n', '<leader>ff', ':Telescope find_files<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fl', ':Telescope oldfiles<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-e>', ':Telescope oldfiles<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>e', ':Telescope oldfiles<CR><ESC>', { noremap = true })
vim.keymap.set("n", "<leader>fd", ":lua require('telescope').extensions.live_grep_args.live_grep_args")

-- Neotree
vim.keymap.set('n', '<Leader>nn', ':Neotree filesystem toggle<CR>', {})
vim.keymap.set('n', '<Leader>nr', ':Neotree filesystem reveal left<CR>', {})

vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("n", "<leader>nh", ":nohl<CR>")
vim.keymap.set("n", "<leader>fg", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")

-- Neotree
vim.keymap.set('n', '<Leader>nn', ':Neotree filesystem toggle<CR>', {})
vim.keymap.set('n', '<Leader>nr', ':Neotree filesystem reveal left<CR>', {})

vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("n", "<leader>nh", ":nohl<CR>")
vim.keymap.set("n", "<leader>fg", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
vim.keymap.set("v", "p", '"_dP') -- paste over currently selected text without yanking it

-- Tab to switch buffers in Normal mode
vim.keymap.set("n", "<Tab>", ":bnext<CR>")
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>")

-- Move selected line / block of text in visual mode
vim.keymap.set("x", "K", ":move '<-2<CR>gv-gv")
vim.keymap.set("x", "J", ":move '>+1<CR>gv-gv")


-- Easier file save
-- vim.keymap("n", "<Leader>w", "<cd>:w<CR>")
vim.keymap.set('n', '<C-s>', '<cmd>silent w<CR>')
vim.keymap.set('i', '<C-s>', '<ESC>:silent w<CR>')

-- Option+Backspace to delete one word backward in insert mode
vim.keymap.set('i', '<A-BS>', '<C-w>', { noremap = true, silent = true })
-- Cmd+Backspace to delete the entire line in insert 
vim.keymap.set("i", "<D-BS>", "<Esc>^D$i", { noremap = true, silent = true })

-- auto save mode
local api = vim.api

api.nvim_create_augroup('autosave', { clear = true })
api.nvim_create_autocmd('InsertLeave', {
  group = 'autosave',
  pattern = '*',
  command = 'silent! w'
})

api.nvim_create_autocmd('TextChanged', {
  group = 'autosave',
  pattern = '*',
  command = 'silent! w'
})

