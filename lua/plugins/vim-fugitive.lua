return {
    "tpope/vim-fugitive",
    config = function()
        vim.keymap.set("n", "gs", "<cmd>Git<cr>")
    end
}
