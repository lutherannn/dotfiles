return {
    { "tpope/vim-fugitive" },
    {
        "brenoprata10/nvim-highlight-colors",
        config = function()
            require("nvim-highlight-colors").setup({})
        end
    },
    { "mhinz/vim-startify" },
    { "tpope/vim-commentary" }
}
