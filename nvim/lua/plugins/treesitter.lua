return {
    "nvim-treesitter/nvim-treesitter", 
    branch = 'master', 
    build = ":TSUpdate",

    config = function()
	local configs = require("nvim-treesitter.configs")
	configs.setup({
	    highlight = { enable = true },
	    indent = {enable = true},
	    autotag = {enable = true},
	    ensure_installed = {"c", "cpp", "vim", "lua", "bash", "python", "markdown", "zig"},
	    auto_install = true,
	})
    end
}
