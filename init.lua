if vim.fn.has('nvim-0.8') == 0 then
  error('Require Neovim 0.8+ for this config.')
end

-- Import Lua modules --
local modules = {'plugins', 'keymaps', 'options', 'autocmds'}

for _, mod in ipairs(modules) do
  local ok, err = pcall(require, mod)
  if not ok then
    error(('Error loading %s...\n\n%s'):format(mod, err))
  end
end

-- Lazy.nvim setup --- sdfsdfadffs
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " " -- make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
  spec = {
    -- import/override with your plugins
    { import = "plugins" },
  },
  defaults = {
    lazy = true, -- every plugin is lazy-loaded by default
    version = "*", -- try installing the latest stable version for plugins that support semver
  },
  install = { colorscheme = { "kanagawa" } },
  checker = { enabled = true }, -- automatically check for plugin updates
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        "matchit",
        "matchparen",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})

-- Faster loading of Neovim --
require("impatient")

-- LSP --
-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.setup_nvim_cmp({
  preselect = 'none',
  completion = {
    completeopt = 'menu,menuone,noinsert,noselect'
  },
})

lsp.set_preferences({
  set_lsp_keymaps = {omit = {"gi", "<C-k>"}}
})


lsp.setup()

-- Configure LSP servers -- 
-- require('lsp-zero').extend_lspconfig()
--
-- require('mason').setup()
-- require('mason-lspconfig').setup()
--
-- local get_servers = require('mason-lspconfig').get_installed_servers
-- for _, server_name in ipairs(get_servers()) do
--   require('lspconfig')[server_name].setup({})
-- end
--
-- -- Diagnostic config --
-- require('lsp-zero').set_sign_icons()
-- vim.diagnostic.config(require('lsp-zero').defaults.diagnostics({}))
--
-- -- Snippet config --
-- require('luasnip').config.set_config({
--   region_check_events = 'InsertEnter',
--   delete_check_events = 'InsertLeave'
-- })
--
-- require('luasnip.loaders.from_vscode').lazy_load()
--
-- local cmp = require('cmp')
-- local cmp_config = require('lsp-zero').defaults.cmp_config({})
--
-- -- If you want insert `(` after select function or method item --
-- local cmp_autopairs = require('nvim-autopairs.completion.cmp')
-- cmp.event:on(
--   'confirm_done',
--   cmp_autopairs.on_confirm_done()
-- )
--
-- cmp.setup(cmp_config)

-- Globally Disable continuation of comment to next line --
vim.api.nvim_command([[
  autocmd BufNewFile,BufRead * setlocal formatoptions-=cro
]])
