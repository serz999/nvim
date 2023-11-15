vim.opt.guicursor = ""

vim.g.netrw_banner = 0

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 8

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.termguicolors = true

vim.opt.wrap = false

vim.opt.swapfile = false

vim.opt.updatetime = 50

-- Remaping
vim.g.mapleader = ','
vim.keymap.set('i' , 'jj', '<Esc>')

-- NetrwTree
-- TODO % - add new file
-- TODO d - add new dir
vim.keymap.set("n", "<leader>e", "<cmd>Ex<cr>")

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

-- LazyVim clone & setup  
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Plugins initialazing
require("lazy").setup('plugins')
