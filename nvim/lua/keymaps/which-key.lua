-- document existing key chains
require('which-key').register {
  ['<leader>c'] = { name = 'Code', _ = 'which_key_ignore' },
  ['<leader>d'] = { name = 'Document', _ = 'which_key_ignore' },
  ['<leader>t'] = { name = 'Telescope', _ = 'which_key_ignore' },
  ['<leader>h'] = { name = 'More git', _ = 'which_key_ignore' },
  ['<leader>r'] = { name = 'Restart lsp server', _ = 'which_key_ignore' },
  ['<leader>s'] = { name = 'Search', _ = 'which_key_ignore' },
  ['<leader>w'] = { name = 'Save file', _ = 'which_key_ignore' },
  ['<leader>a'] = { name = 'Save/Restore Sessions', _ = 'which_key_ignore' },
  ['<leader>e'] = { name = 'File tree', _ = 'which_key_ignore' },
  ['<leader>x'] = { name = 'Diagnostics', _ = 'which_key_ignore' },
  ['<leader>l'] = { name = 'Lsp', _ = 'which_key_ignore' },
}
