return {
    {
        'barrett-ruth/import-cost.nvim',
        build = 'sh install.sh yarn',
        config = function()
            vim.g.import_cost = {
                filetypes = {
                    'javascript',
                    'javascriptreact',
                    'typescript',
                    'typescriptreact',
                },
                format = {
                    byte_format = '%.1fb',
                    kb_format = '%.1fk',
                    virtual_text = '%s (gzipped: %s)',
                },
                highlight = 'Comment',
            }
        end
    },
}
