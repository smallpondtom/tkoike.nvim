return {
    -- Colorschemes
    {
        "rebelot/kanagawa.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd.colorscheme 'kanagawa'
        end,
    },
	{ "folke/tokyonight.nvim" },
    { "ellisonleao/gruvbox.nvim" },

    -- Utilities
    { "nvim-lua/plenary.nvim" },
    { "folke/neodev.nvim", opts = {} },
    {
    "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        build = "cd app && yarn install",
        init = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
        ft = { "markdown" },
    },

    -- LSP
    {
        'williamboman/mason.nvim',
        dependencies = {
            "WhoIsSethDaniel/mason-tool-installer.nvim",
        },
    },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'VonHeikemen/lsp-zero.nvim', branch = 'v3.x' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },

    -- Autocompletion
    {
        'hrsh7th/nvim-cmp',
        event = { "InsertEnter", "CmdlineEnter" },
    },
    { "rafamadriz/friendly-snippets" },
    {
        'L3MON4D3/LuaSnip',
        dependencies = { "rafamadriz/friendly-snippets" },
    },
    { 'hrsh7th/cmp-nvim-lua' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    { 'saadparwaiz1/cmp_luasnip' },

    -- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function ()
			local configs = require("nvim-treesitter.configs")

			configs.setup({
				ensure_installed = {
                    "c", "cpp", "lua", "vim", "vimdoc", "julia", "rust",
                    "python", "markdown", "json", "html", "yaml", "toml",
                },
				sync_install = false,
				highlight = { enable = true },
				indent = { enable = true },
			})
		end
	},

    -- Formatting
    {
        "stevearc/conform.nvim",
        event = { "BufReadPre", "BufNewFile" },
    },

    -- Linter
    {
        'mfussenegger/nvim-lint',
        event = { "BufReadPre", "BufNewFile" },
    },
    { 'WhoIsSethDaniel/mason-tool-installer.nvim' },

    -- Productivity
    { "zbirenbaum/copilot.lua" }, 
    { 'echasnovski/mini.pairs', version = false },
    { 'echasnovski/mini.surround', version = false },
    { 'echasnovski/mini.comment', version = false },
    { 'mg979/vim-visual-multi' },
    { 'easymotion/vim-easymotion' },

    -- Git
    { "lewis6991/gitsigns.nvim" },
    { "tpope/vim-fugitive", lazy = false },

    -- Search
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        dependencies = { 
            {'nvim-lua/plenary.nvim'},
            {
                "nvim-telescope/telescope-live-grep-args.nvim",
                -- This will not install any breaking changes.
                -- For major updates, this must be adjusted manually.
                version = "^1.0.0",
            },
        },
    },
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    { "debugloop/telescope-undo.nvim" },
	{
        "AckslD/nvim-neoclip.lua",
        requires = {
            {'nvim-telescope/telescope.nvim'},
        },
        config = function()
            require('neoclip').setup({
                keys = {
                    telescope = {
                        i = {
                            select = '<cr>',
                            paste = '<c-P>',
                            paste_behind = '<c-B>',
                            replay = '<c-Q>',  -- replay a macro
                            delete = '<c-D>',  -- delete an entry
                            edit = '<c-E>',  -- edit an entry
                            custom = {},
                        },
                        n = {
                            select = '<cr>',
                            paste = 'P',
                            --- It is possible to map to more than one key.
                            -- paste = { 'p', '<c-p>' },
                            paste_behind = 'B',
                            replay = 'Q',
                            delete = 'D',
                            edit = 'E',
                            custom = {},
                        },
                    },
                    fzf = {
                        select = 'default',
                        paste = 'ctrl-P',
                        paste_behind = 'ctrl-B',
                        custom = {},
                    },
                },
            })
        end,
    },
    
    -- UI
    {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
    },
    { 'rcarriga/nvim-notify' },
    { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },

    -- Julia
    { "JuliaEditorSupport/julia-vim" },
    {
        'kdheepak/JuliaFormatter.vim',
        ft = { 'julia' },
    },

    -- Debugging
    -- { 'mfussenegger/nvim-dap' },
    -- { 'rcarriga/nvim-dap-ui' },
    -- { 'theHamsta/nvim-dap-virtual-text' },
    -- { "jay-babu/mason-nvim-dap.nvim" },

    -- REPL Dev
    { 'jpalardy/vim-slime' },
    { 'klafyvel/vim-slime-cells', ft = {'julia', 'python'} },
}
