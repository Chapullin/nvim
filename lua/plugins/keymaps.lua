local M = {}

function M.setup()
  local map = vim.keymap -- for conciseness 

  map.set("i", "jk", "<ESC>")
  map.set("n", "<leader>nh", ":nohl<CR>")
  map.set("n", "<leader>fg", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
  map.set("v", "p", '"_dP') -- paste over currently selected text without yanking it

  -- Tab to switch buffers in Normal mode
  map.set("n", "<Tab>", ":bnext<CR>")
  map.set("n", "<S-Tab>", ":bprevious<CR>")

  -- Move selected line / block of text in visual mode
  map.set("x", "K", ":move '<-2<CR>gv-gv")
  map.set("x", "J", ":move '>+1<CR>gv-gv")


  -- Easier file save
  -- map("n", "<Leader>w", "<cd>:w<CR>")
  map.set('n', '<C-s>', '<cmd>silent w<CR>')
  map.set('i', '<C-s>', '<ESC>:silent w<CR>')

end

return M
