return {
    'akinsho/bufferline.nvim',
    version = "*",
    config = function ()
        require("bufferline").setup({})

        vim.keymap.set('n', 'H', '<Cmd>BufferLineCyclePrev<CR>')
        vim.keymap.set('n', 'L', '<Cmd>BufferLineCycleNext<CR>')
        vim.keymap.set('n', 'q', '<Cmd>bd<CR>')
    end
}
