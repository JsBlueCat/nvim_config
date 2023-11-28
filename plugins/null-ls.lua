return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"
    local b = null_ls.builtins

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Set a formatter
      -- null_ls.builtins.formatting.stylua,
      -- null_ls.builtins.formatting.prettier,
      -- webdev stuff
      b.formatting.deno_fmt,
      b.formatting.prettier,

      -- Lua
      b.formatting.stylua,

      -- Shell
      b.formatting.shfmt,
      b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },

      -- Python
      b.diagnostics.flake8,
      b.diagnostics.mypy
    }
    return config -- return final config table
  end,
}
