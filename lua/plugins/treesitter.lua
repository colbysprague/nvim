return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = {"lua", "go", "svelte", "javascript", "html", "css"},
            highlight = { enable = true },
            indent = { enable = true }
        })
    end
}
