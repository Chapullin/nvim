return {
  {
    -- This is for formatting or diagnostics
    "nvimtools/none-ls.nvim",
    dependencies = {
      "nvimtools/none-ls-extras.nvim", -- Ensure this dependency is included
    },
    config = function()
      local null_ls = require("null-ls")

      null_ls.setup({
        debug = true, -- Enable debug mode for troubleshooting
        sources = {
          null_ls.builtins.formatting.stylua,
          null_ls.builtins.formatting.prettier,
          null_ls.builtins.completion.spell,

          -- Use ESLint from none-ls-extras (make sure it is installed)
          -- require("none-ls.extras.diagnostics.eslint_d"), -- Correctly reference eslint_d
        },
      })

      -- Key mapping for formatting
      vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
  },
}
