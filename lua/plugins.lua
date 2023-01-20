return {
  -- Colorschemes --
  {
    "rebelot/kanagawa.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd([[colorscheme kanagawa]])
    end,
  },
  {
    "folke/tokyonight.nvim",
  },
  {
    "navarasu/onedark.nvim"
  },

  -- Fuzzy Finder --
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make'
  },

  -- Treesitter --
  {
    'nvim-treesitter/nvim-treesitter',
    build = function()
      pcall(require('nvim-treesitter.install').update { with_sync = true })
    end,
  },

  -- Autocompletion -- 
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lua',

      -- Snippets
      'L3MON4D3/LuaSnip',
      'rafamadriz/friendly-snippets',
    }
  },

  -- LSP Support -- 
  {
	  'VonHeikemen/lsp-zero.nvim',
	  dependencies = {
		  'neovim/nvim-lspconfig',
		  'williamboman/mason.nvim',
		  'williamboman/mason-lspconfig.nvim'
	  }
  },

}
