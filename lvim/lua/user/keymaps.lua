-- keymappings [view all the defaults by pressing <leader>Lk]
local opts = {noremap = true, silent = true}
-- local keymap = vim.api.nvim_set_keymap
local keymap = vim.keymap.set

--KEYMAPS MODES
-- INSERT
keymap("i","<A-a>","<ESC>A",opts)
--vim.keymap.set()

--NORMAL
keymap("n","<C-x>", "<C-w>x",opts)
keymap("n", "<A-s>", ":LspOverloadsSignature<CR>", opts)

keymap("n", "<C-d>","<C-d>zz",opts)
keymap("n", "<C-u>","<C-u>zz",opts)

-- keymap("v", "<leader>p","\"_dP")

keymap("n", "<A-p>","ciw<C-r>0<ESC>",opts)
