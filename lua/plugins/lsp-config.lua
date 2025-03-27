return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "ts_ls", "gopls", "svelte", "tailwindcss", "htmx" }
            })
        end
    },
    {
        -- connects neovim to language servers
        -- set up configuration for each language server that you have installed
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.ts_ls.setup({})
            lspconfig.gopls.setup({})
            lspconfig.svelte.setup({})
            lspconfig.tailwindcss.setup({})
            lspconfig.htmx.setup({})

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            -- <c-o> to go back and <c-i> to go forward
            vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})

            vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
        end
    }
}
