return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim',
      {
        'nvim-telescope/telescope-live-grep-args.nvim',
        version="^1.0.0"
      },
      'nvim-telescope/telescope-ui-select.nvim',
    },
    config = function()
      local telescope=require('telescope')

      -- Telescope config
      telescope.setup({
        defaults = {
          layout_strategy = 'vertical',
        },
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {}
          }

        }
      })

      -- Load extensions
      telescope.load_extension("live_grep_args")
      telescope.load_extension("ui-select")
    end
  },
}
