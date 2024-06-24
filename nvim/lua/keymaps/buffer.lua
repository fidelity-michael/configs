-- Map Ctrl+h to move to the left buffer
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
-- Map Ctrl+j to move to the bottom buffer
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
-- Map Ctrl+k to move to the top buffer
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
-- Map Ctrl+l to move to the right buffer
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

-- Resize buffers
vim.api.nvim_set_keymap('n', '<C-Left>','<C-w><', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Right>','<C-w>>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Up>','<C-w>+', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Down>','<C-w>-', { noremap = true, silent = true })
