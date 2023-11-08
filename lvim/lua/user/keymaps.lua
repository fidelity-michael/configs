-- keymappings [view all the defaults by pressing <leader>Lk]
local opts = {noremap = true, silent = true}
-- local keymap = vim.api.nvim_set_keymap
local keymap = vim.keymap.set

--KEYMAPS MODES
-- INSERT
keymap("i","<A-a>","<ESC>A",opts)
--vim.keymap.set()

--NORMAL
keymap("n","<C-x>","<C-w>x",opts)
keymap("n", "<A-s>", ":LspOverloadsSignature<CR>", opts)

