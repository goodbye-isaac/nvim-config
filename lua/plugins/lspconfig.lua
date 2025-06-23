return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruby_lsp = {
          mason = false,
          cmd = { "bundle", "exec", "ruby-lsp" },
          root_dir = require("lspconfig.util").root_pattern("Gemfile", ".git"),
        },
        rubocop = {
          mason = false,
          cmd = { "bundle", "exec", "rubocop", "--lsp" },
          filetypes = { "ruby" },
          root_dir = require("lspconfig.util").root_pattern("Gemfile", ".git"),
        },
      },
    },
  },
}
