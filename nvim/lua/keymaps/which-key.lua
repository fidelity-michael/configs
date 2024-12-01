-- document existing key chains
require('which-key').add( {
  {'<leader>c',  desc = 'Code'},
  { '<leader>d', desc = 'Document'},
  { '<leader>t', desc = 'Telescope'},
  { '<leader>h', desc = 'More git'},
  { '<leader>r', desc = 'Restart lsp server'},
  { '<leader>s', desc = 'Search'},
  { '<leader>w', desc = 'Save file'},
  { '<leader>a', desc = 'Save/Restore Sessions'},
  { '<leader>e', desc = 'File tree'},
  { '<leader>x', desc = 'Diagnostics'},
  { '<leader>l', desc = 'Lsp'},
})
