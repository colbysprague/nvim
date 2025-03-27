return {
    'airblade/vim-gitgutter',
    config = function()
        vim.g.gitgutter_sign_added = '➕'
        vim.g.gitgutter_sign_modified = '✏️'
        vim.g.gitgutter_sign_removed = '❌'
    end
}
