vim.g.netrw_banner = 0 -- Hide banner above files
vim.g.netrw_liststyle = 3 -- Tree instead of plain view
vim.g.netrw_browse_split = 3 -- Vertical split window when Enter pressed on file
vim.g.termguicolors = true

vim.opt.encoding = 'utf-8'
vim.opt.mouse = 'a'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 7
vim.opt.spelllang = { 'en_us', 'ru' }
vim.cmd('set noswapfile')
vim.cmd('syntax on')

-- Indents
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.fileformat = 'unix'
vim.cmd('filetype indent on')

-- OS and vim clipboard sync
vim.cmd('set clipboard=unnamedplus')

-- Cursorlune coloring 
vim.cmd([[
    set cursorline
	highlight clear CursorLine
    highlight! CursorLineNR guibg=NONE ctermbg=NONE
]])

--
vim.g.mapleader = ','
vim.keymap.set('i' , 'jj', '<Esc>')
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")

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
