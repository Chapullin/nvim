return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    -- Set folding options
    local vim = vim
    vim.opt.foldmethod = "expr"
    vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

    require'nvim-treesitter.configs'.setup {
      -- A list of parser names, or "all" (the listed parsers MUST always be installed)
      -- ensure_installed = { "lua", "vim", "vimdoc",  "markdown", "markdown_inline" , "json", "javascript", "tsx", "bash"},

      -- Install parsers synchronously (only applied to `ensure_installed`)
      sync_install = true,

      -- Automatically install missing parsers when entering buffer
      auto_install = true,

      -- List of parsers to ignore installing (or "all")
      -- ignore_install = { "javascript" },

      highlight = {
        enable = true,

        -- NOTE: these are the names of the parsers and not the filetype.
        -- disable = { "c", "rust" },

        -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
        disable = function(lang, buf)
          local max_filesize = 100 * 1024 -- 100 KB
          local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
          if ok and stats and stats.size > max_filesize then
            return true
          end
        end,

        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        additional_vim_regex_highlighting = false,
      },
      indent = { enable = true },
      -- Add folding configuration
      fold = {
        enable = true,
        foldmethod = 'expr',
        foldexpr = 'nvim_treesitter#foldexpr()',
      },
    }
    vim.cmd [[
      autocmd BufReadPost * normal zR
      ]]
  end,
}
