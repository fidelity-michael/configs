lvim.log.level = "warn"
lvim.format_on_save.enabled = false
lvim.builtin.treesitter.autotag.enable = true

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"

require("nvim-surround").setup()
require("lsp-overloads").setup()
require('nvim-ts-autotag').setup()

--[[ require('onedark').setup {
    style = 'dark',
    toggle_style_key = "<leader>ts", -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "{leader}ts"
    -- toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between
    toggle_style_list = {'light', 'dark'}, -- List of styles to toggle between
}
lvim.colorscheme = "onedark" ]]
-- lvim.colorscheme = "kanagawa"

-- Vim options
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
vim.opt.autowriteall = true
Colors()

vim.cmd([[
  autocmd FocusLost * silent! w
]])

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enable = true

-- Formatting in Python
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup { { name = "black" }, }

local linters = require "lvim.lsp.null-ls.linters"
linters.setup { { command = "flake8", args = { "--ignore=E203" }, filetypes = { "python" } } }

