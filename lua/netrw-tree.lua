vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

vim.cmd([[
    function! NetrwMapping()
         nmap <buffer> <leader>e -
    endfunction

    augroup netrw_mapping
      autocmd!
      autocmd filetype netrw call NetrwMapping()
    augroup END
]])

-- TODO % - add new file
-- TODO d - add new dir
vim.keymap.set("n", "<leader>e", "<cmd>Ex<cr>")
