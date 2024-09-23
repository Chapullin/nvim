return {
  "catppuccin/nvim",
  lazy = false,
  priority = 1000,

  -- Set the colorscheme to Catppuccin
  config = function()
    vim.cmd.colorscheme "catppuccin"
  end
}
