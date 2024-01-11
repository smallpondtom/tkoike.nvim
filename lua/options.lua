vim.cmd("set encoding=UTF-8")
vim.cmd("set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis")

vim.api.nvim_command("let g:latex_to_unicode_auto = 1")

vim.opt.termguicolors = true
vim.opt.autowrite = true
vim.opt.confirm = true
vim.opt.grepformat = "%f:%l:%c:%m"
vim.opt.grepprg = "rg --vimgrep"

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.smartcase = true

vim.opt.incsearch = true
vim.opt.wrap = false
vim.opt.swapfile = false

vim.opt.undofile = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

vim.wo.signcolumn = 'yes'
vim.o.number = true
vim.wo.number = true
vim.opt.iskeyword = vim.opt.iskeyword + "-"
vim.opt.shortmess = vim.opt.shortmess + "c"
vim.go.hidden = true
vim.opt.completeopt = {'menuone', 'noinsert', 'noselect'}

vim.go.timeoutlen = 800
vim.opt.updatetime = 300

vim.opt.autochdir = true
vim.cmd("set clipboard+=unnamedplus")
vim.cmd("set whichwrap+=<,>,[,],h,l")

vim.opt.mouse = "a"
vim.opt.cmdheight = 1
vim.opt.showtabline = 2
vim.opt.showmode = true
vim.opt.cursorline = true
vim.opt.laststatus = 3

-- vim.cmd("highlight Cursor ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold")
vim.opt.ignorecase = true
vim.cmd("set formatoptions-=cro")

vim.g.loaded_matchparen = 1

vim.cmd([[set mps+=":"]])
