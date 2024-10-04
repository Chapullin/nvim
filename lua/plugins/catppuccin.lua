return {
  "catppuccin/nvim",
  lazy = false,
  priority = 1000,

  -- Set the colorscheme to Catppuccin
  config = function()
    vim.cmd.colorscheme "catppuccin"
    -- Set line number colors,
    vim.api.nvim_set_hl(0, 'LineNr', { fg = '#DCDCDC' })  -- Light color for normal line numbers
    vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#FFD700' })  -- Bright color for current line number

    -- Optional: Enable cursorline for better visibility
    vim.opt.cursorline = true
  end
}
