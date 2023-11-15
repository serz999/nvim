return {
    'nvim-telescope/telescope.nvim',
    version = '0.1.1',
    dependencies = {
        'nvim-lua/plenary.nvim',
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'make'
        },
    },
    config = function()
        local telescope = require('telescope')

        telescope.setup({})

        telescope.load_extension('fzf')

        vim.keymap.set('n', '<leader>f', '<cmd>Telescope find_files<cr>')
        vim.keymap.set('n', '<leader>g', '<cmd>Telescope live_grep<cr>')
    end
}
