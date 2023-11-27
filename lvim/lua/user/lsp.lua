-- add `pyright` to `skipped_servers` list
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright", "pylsp" })
-- remove `jedi_language_server` from `skipped_servers` list
lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
  return server ~= "jedi_language_server"
end, lvim.lsp.automatic_configuration.skipped_servers)

--[[ lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
  return server ~= "pylsp"
end, lvim.lsp.automatic_configuration.skipped_servers) ]]

--[[ vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "tailwindcss-language-server" })
lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
  return server ~= "html-lsp"
end, lvim.lsp.automatic_configuration.skipped_servers) ]]

--[[ local lspconfig = require "lspconfig"
lspconfig.tailwindcsslanguageserver.setup {
  filetypes = { "javascriptreact","typescriptreact" }
} ]]
