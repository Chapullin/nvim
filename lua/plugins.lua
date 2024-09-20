return {
  -- List your plugins here 
  
  -- { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate', 

  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
  },
  -- LSP and related plugins
  'williamboman/mason.nvim',               -- Package manager for LSP servers
  'williamboman/mason-lspconfig.nvim',    -- Integration for mason with lspconfig
  'neovim/nvim-lspconfig',                 -- LSP configurations
  'hrsh7th/nvim-cmp',                      -- Autocompletion plugin
  'hrsh7th/cmp-nvim-lsp',                  -- LSP source for nvim-cmp

  -- Add more plugins as needed
}
