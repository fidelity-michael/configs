-- [[ Install `lazy.nvim` plugin manager ]]
--    https://github.com/folke/lazy.nvim
--    `:help lazy.nvim.txt` for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- [[ Configure plugins ]]
-- NOTE: Here is where you install your plugins.
--  You can configure plugins using the `config` key.
--
--  You can also configure plugins after the setup call,
--    as they will be available in your neovim runtime.
require('lazy').setup({
  -- NOTE: First, some plugins that don't require any configuration

  -- Git related plugins
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',

  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',
  -- {
  -- 	-- Theme inspired by Atom
  -- 	'navarasu/onedark.nvim',
  -- 	priority = 1000,
  -- 	config = function()
  -- 		vim.cmd.colorscheme 'onedark'
  -- 	end,
  -- },
  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },


  --[[ {
    -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ':TSUpdate',
  }, ]]

  { 'kaarmu/typst.vim' },
  { 'chomosuke/typst-preview.nvim' },
  { 'nvim-neotest/nvim-nio' },
  { 's1n7ax/nvim-window-picker' },
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true,
  },
  { import = 'user.plugins' },
  { import = 'user.plugins.lsp' },
}, { change_detection = { notify = false } })
