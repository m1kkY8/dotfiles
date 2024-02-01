return {
    {
        "folke/neoconf.nvim",
        cmd = "Neoconf",
        config = function ()
            require ("neoconf").setup({})
        end
    },

    {
        'williamboman/mason.nvim',
    },
    {
        'williamboman/mason-lspconfig.nvim',
    },
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
    },
    {
        'neovim/nvim-lspconfig'
    },
    {
        'hrsh7th/nvim-cmp',
    },
    {
        'hrsh7th/cmp-nvim-lsp'
    },
    {
        'hrsh7th/cmp-buffer'
    },
    {
        'hrsh7th/cmp-path'
    },
    {
        'saadparwaiz1/cmp_luasnip'
    },
    {
        'hrsh7th/cmp-nvim-lua'
    },
    {
        "L3MON4D3/LuaSnip",
        dependencies = { "rafamadriz/friendly-snippets" },
    },
    {
        'hrsh7th/cmp-cmdline'
    },
}
