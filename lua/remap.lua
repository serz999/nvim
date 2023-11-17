vim.g.mapleader = ','
vim.keymap.set('i' , 'jj', '<Esc>')

--  Move a line through the buffer
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Hold cursor on place before commands
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Don't append to copy_buffer when p 
vim.keymap.set("x", "p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Buffers managment 
vim.keymap.set ('n', 'q', '<cmd>bd<cr>')
-- vim.keymap.set('n', 'H', ':BufferLineCyclePrev<CR>')
-- vim.keymap.set('n', 'L', ':BufferLineCycleNext<CR>')

-- hlsearch 
vim.keymap.set('n', '<leader><space>', '<Cmd>nohlsearch<CR>')
