-- add `pyright` to `skipped_servers` list
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright", "pylsp" })
-- remove `jedi_language_server` from `skipped_servers` list
lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
  return server ~= "jedi_language_server"
end, lvim.lsp.automatic_configuration.skipped_servers)

-- local util = require 'lspconfig.util'
-- return {
--   default_config = {
--     cmd = { 'typst-lsp' },
--     filetypes = { 'typst' },
--     single_file_support = true,
--     root_dir = function(fname)
--       return util.find_git_ancestor(fname)
--     end,
--   },
--   docs = {
--     description = [[
--       https://github.com/nvarner/typst-lsp

--       Language server for Typst.
--     ]],
--   },
-- }

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
