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
  { "folke/tokyonight.nvim", },
  { "navarasu/onedark.nvim" },

  -- Fuzzy Finder --
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false
  },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make"
  },

  -- Treesitter --
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = function()
      pcall(require("nvim-treesitter.install").update { with_sync = true })
    end,
  },

  -- Autocompletion & LSP -- 
  {
    'VonHeikemen/lsp-zero.nvim',
    lazy = false,
    branch = "v1.x",
    dependencies = {
      -- LSP Support
      'neovim/nvim-lspconfig',             -- Required
      'williamboman/mason.nvim',           -- Optional
      'williamboman/mason-lspconfig.nvim', -- Optional

      -- Autocompletion
      'hrsh7th/nvim-cmp',         -- Required
      'hrsh7th/cmp-nvim-lsp',     -- Required
      'hrsh7th/cmp-buffer',       -- Optional
      'hrsh7th/cmp-path',         -- Optional
      'saadparwaiz1/cmp_luasnip', -- Optional
      'hrsh7th/cmp-nvim-lua',     -- Optional

      -- Snippets
      'L3MON4D3/LuaSnip',             -- Required
      'rafamadriz/friendly-snippets', -- Optional
    }
  },
  { "j-hui/fidget.nvim" },
  { "folke/neodev.nvim" },

  -- Git --
  { "tpope/vim-fugitive" },
  { "lewis6991/gitsigns.nvim" },

  -- UI --
  { "nvim-tree/nvim-web-devicons" },
  {
    "nvim-tree/nvim-tree.lua",
    version = "nightly"
  },
  { "nvim-lualine/lualine.nvim" },
  { "romgrk/barbar.nvim" },

  -- Other --
  { "numToStr/Comment.nvim" },
  { "mbbill/undotree" },
  { "folke/zen-mode.nvim" },
  { "ThePrimeagen/harpoon" },
  { "kylechui/nvim-surround" },
  { "windwp/nvim-autopairs" },
  { "folke/todo-comments.nvim" },
  { "lewis6991/impatient.nvim" },
  { "folke/trouble.nvim" },
  { -- intall with npm
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },
  { "lukas-reineke/indent-blankline.nvim" },

}
