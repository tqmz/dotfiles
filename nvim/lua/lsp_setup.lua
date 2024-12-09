---@diagnostic disable: undefined-global
-- Setup language servers.
local lspconfig = require('lspconfig')
lspconfig.ruby_lsp.setup{}
-- lspconfig.rubocop.setup{}
lspconfig.solargraph.setup{
  cmd = { "solargraph", "stdio" },
  filetypes = { "ruby" },
  root_dir = require('lspconfig.util').root_pattern("Gemfile", ".git", "."),
  settings = {
    solargraph = {
      diagnostics = true,
      completion = true,
      definitions = true,
      symbols = true,
      rails = true,
      rspec = true,
    }
  }
}
lspconfig.ts_ls.setup{}
lspconfig.eslint.setup{
  settings = {
    eslint = {
      enable = true,
      packageManager = "npm",
    }
  }
}
lspconfig.bashls.setup{
  filetypes = { "bash", "sh", "zsh" }
}
lspconfig.lua_ls.setup{}
lspconfig.docker_compose_language_service.setup{}

vim.diagnostic.config({
  float = {
    show_header = true,
    source = 'always',
    focusable = false,
  }
})
