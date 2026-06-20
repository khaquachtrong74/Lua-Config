return {
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate",
        config = function()
            require("mason").setup()
            
            local mason_bin = vim.fn.stdpath("data") .. "/mason/bin"
            if not string.find(vim.env.PATH, mason_bin, 1, true) then
                vim.env.PATH = mason_bin .. ":" .. vim.env.PATH
            end
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = { "williamboman/mason.nvim" }, 
        config = function()
            require("mason-lspconfig").setup({
                automatic_installation = true, 
                ensure_installed = {
                    "gopls", 
                    "pyright", 
                    "ts_ls", 
                    "jdtls", 
                    "clangd",
                    "cmake",
                }
            })

            local config = vim.lsp.config
            local enable = vim.lsp.enable

            config('ts_ls', {})
            enable('ts_ls')

            config('jdtls', {
                cmd = { 
                    "jdtls", 
                    "-data", 
                    vim.fn.expand("~/.cache/nvim/jdtls/workspace/") .. vim.fn.fnamemodify(vim.fn.getcwd(), ":t") 
                }
            })
            enable('jdtls')

            config('clangd', {})
            enable('clangd')

            config('pyright', {})
            enable('pyright')

            config('cmake', {})
            enable('cmake')

            config('gopls', {})
            enable('gopls')
        end
    },
    -- Completion
    { "hrsh7th/nvim-cmp" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-path" },
    { "L3MON4D3/LuaSnip" },
    { "saadparwaiz1/cmp_luasnip" }
}
