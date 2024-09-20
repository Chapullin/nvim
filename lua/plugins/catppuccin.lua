return {
  "catppuccin/nvim",
  lazy = false,
  name = "catppuccin",
  priority = 1000,

  -- Set the colorscheme to Catppuccin
  config = function()
    vim.cmd.colorscheme "catppuccin"
  end
}
