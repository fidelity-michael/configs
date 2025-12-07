vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

-- [[ Setting options ]]
-- See `:help vim.o`

-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.wo.number = true
vim.wo.relativenumber = true

-- Set the number of spaces that a <Tab> counts for while editing
vim.o.softtabstop = 2

-- Make tabbing smarter (will use shiftwidths when possible)
vim.o.smarttab = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.cindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'
-- For session save
vim.o.sessionoptions = 'blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions'

vim.opt.swapfile = false
vim.opt.wrap = false
--[[]]
--[[ vim.cmd("filetype plugin indent on") ]]
--[[]]
--[[ -- Set indent options for JSX/TSX ]]
--[[ vim.api.nvim_create_autocmd("FileType", { ]]
--[[   pattern = {"javascript", "typescript", "typescriptreact", "javascriptreact", "jsx", "tsx"}, ]]
--[[   callback = function() ]]
--[[     vim.opt_local.shiftwidth = 2 ]]
--[[     vim.opt_local.tabstop = 2 ]]
--[[     vim.opt_local.softtabstop = 2 ]]
--[[     vim.opt_local.expandtab = true ]]
--[[   end, ]]
--[[ }) ]]
--
--
--

-- For nvim to work when keyboard is greek
vim.opt.langmap = {
  'ΑA',
  'ΒB',
  'ΨC',
  'ΔD',
  'ΕE',
  'ΦF',
  'ΓG',
  'ΗH',
  'ΙI',
  'ΞJ',
  'ΚK',
  'ΛL',
  'ΜM',
  'ΝN',
  'ΟO',
  'ΠP',
  'QQ',
  'ΡR',
  'ΣS',
  'ΤT',
  'ΘU',
  'ΩV',
  'WW',
  'ΧX',
  'ΥY',
  'ΖZ',
  'αa',
  'βb',
  'ψc',
  'δd',
  'εe',
  'φf',
  'γg',
  'ηh',
  'ιi',
  'ξj',
  'κk',
  'λl',
  'μm',
  'νn',
  'οo',
  'πp',
  'qq',
  'ρr',
  'σs',
  'τt',
  'θu',
  'ωv',
  'ςw',
  'χx',
  'υy',
  'ζz',
}

if vim.g.neovide then
  vim.o.guifont = 'JetBrainsMono Nerd Font Mono:h10'
  vim.g.neovide_refresh_rate = 120
  vim.g.neovide_refresh_rate_idle = 5
  vim.g.neovide_fullscreen = true
  vim.g.neovide_hide_mouse_when_typing = true
  -- vim.g.neovide_transparency = 0.5
  -- vim.g.transparency = 0.5

  vim.keymap.set('n', '<D-s>', ':w<CR>') -- Save
  vim.keymap.set('v', '<D-c>', '"+y') -- Copy
  vim.keymap.set('n', '<D-v>', '"+P') -- Paste normal mode
  vim.keymap.set('v', '<D-v>', '"+P') -- Paste visual mode
  vim.keymap.set('c', '<D-v>', '<C-R>+') -- Paste command mode
  vim.keymap.set({ 'i', 't' }, '<C-V>', '<ESC>l"+Pli') -- Paste insert mode
  vim.api.nvim_set_keymap('', '<D-v>', '+p<CR>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('!', '<D-v>', '<C-R>+', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('t', '<D-v>', '<C-R>+', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('v', '<D-v>', '<C-R>+', { noremap = true, silent = true })

  -- Fullscreen keymap
  vim.keymap.set('n', '<C-F>', function()
    vim.g.neovide_fullscreen = not vim.g.neovide_fullscreen
  end)

  -- Scaling keymaps
  vim.g.neovide_scale_factor = 1.0
  local change_scale_factor = function(delta)
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
  end
  vim.keymap.set('n', '<C-=>', function()
    change_scale_factor(1.25)
  end)
  vim.keymap.set('n', '<C-->', function()
    change_scale_factor(1 / 1.25)
  end)
end

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'php',
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.softtabstop = 4
    vim.opt_local.expandtab = true
  end,
})
