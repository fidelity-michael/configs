lvim.log.level = "warn"
lvim.format_on_save.enabled = false
lvim.builtin.treesitter.autotag.enable = true

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"

require("nvim-surround").setup()
require("lsp-overloads").setup()
require('nvim-ts-autotag').setup()
-- require('neoscroll').setup()
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

-- Time it takes for which-key to open
vim.opt.timeoutlen = 300

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

-- Flake setup
local linters = require "lvim.lsp.null-ls.linters"
linters.setup { { command = "flake8", args = { "--ignore=E203" }, filetypes = { "python" } } }

local function set_terminal_keymaps()
                local map = vim.api.nvim_buf_set_keymap
                local map_opts = {
                    noremap = true,
                }
                map(0, "t", "<esc>", [[<C-\><C-n>]], map_opts)
            end
            vim.api.nvim_create_autocmd("TermOpen", { pattern = "term://*", callback = set_terminal_keymaps })

--[[ require 'lspconfig'['pylsp'].setup {
  -- on_attach = "on_attach",
  filetypes = { 'python' },
  settings = {
    configurationSources = { "flake8" },
    formatCommand = { "black" },
    pylsp = {
      plugins = {
        -- jedi_completion = {fuzzy = true},
        -- jedi_completion = {eager=true},
        jedi_completion = {
          include_params = true,
        },
        jedi_signature_help = { enabled = true },
        jedi = {
          extra_paths = { '~/projects/work_odoo/odoo14', '~/projects/work_odoo/odoo14' },
          -- environment = {"odoo"},
        },
        pyflakes = { enabled = true },
        -- pylint = {args = {'--ignore=E501,E231', '-'}, enabled=true, debounce=200},
        pylsp_mypy = { enabled = false },
        pycodestyle = {
          enabled = true,
          ignore = { 'E501', 'E231' },
          maxLineLength = 120 },
        yapf = { enabled = true }
      }
    }
  }
} ]]
