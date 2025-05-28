-- See `:help telescope.builtin`
local keymap = vim.keymap
keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = 'Find recently opened files' })
keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = 'Find existing buffers' })
keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = 'Fuzzily search in current buffer' })

-- keymap.set('n', '<leader>gf', require('telescope.builtin').git_files, { desc = 'Search[G]it [F]iles' })
keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = 'Search Files' })
keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = 'Search Help' })
keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = 'Search current Word' })
keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = 'Search by Grep' })
keymap.set('n', '<leader>sG', ':LiveGrepGitRoot<cr>', { desc = 'Search by Grep on Git Root' })
keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = 'Search Diagnostics' })
keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = 'Search Resume' })
keymap.set('n', '<leader>st', '<cmd>TodoTelescope<cr>', { desc = 'Find todos' })

-- Function to call the colorscheme picker with a preview
function PickColorScheme()
  require('telescope.builtin').colorscheme { enable_preview = true }
end

vim.keymap.set('n', '<leader>tc', ':lua PickColorScheme()<CR>', { desc = 'Pick colorscheme'})
