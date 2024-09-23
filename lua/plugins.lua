return {
  -- List your plugins here 
  
  -- { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate', 
  -- LSP and related plugins
  'williamboman/mason.nvim',               -- Package manager for LSP servers
  'williamboman/mason-lspconfig.nvim',    -- Integration for mason with lspconfig
  'neovim/nvim-lspconfig',                 -- LSP configurations
  'hrsh7th/nvim-cmp',                      -- Autocompletion plugin
  'hrsh7th/cmp-nvim-lsp',                  -- LSP source for nvim-cmp

  -- Add more plugins as needed
}
