vim.cmd("set encoding=UTF-8")
vim.cmd("set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis")

vim.api.nvim_command("let g:latex_to_unicode_auto = 1")

vim.opt.autowrite = true -- enable auto write
vim.opt.cmdheight = 1
vim.opt.confirm = true -- confirm to save changes before exiting modified buffer
vim.opt.formatoptions = "jcroqlnt" -- tcqj
vim.opt.grepformat = "%f:%l:%c:%m"
vim.opt.grepprg = "rg --vimgrep"

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.softtabstop = 2

vim.opt.incsearch = true
vim.opt.wrap = false
vim.opt.swapfile = false

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
-- vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.smartcase = true

vim.wo.signcolumn = 'yes'
vim.o.number = true
vim.wo.number = true
vim.opt.iskeyword = vim.opt.iskeyword + "-"
vim.opt.shortmess = vim.opt.shortmess + "c"
vim.go.hidden = true
vim.opt.completeopt = "menuone,noinsert,noselect"
vim.opt.colorcolumn = "80"
-- vim.go.timeoutlen = 100
-- vim.opt.updatetime = 100

vim.opt.autochdir = true
vim.cmd("set clipboard+=unnamedplus")
vim.cmd("set whichwrap+=<,>,[,],h,l")

vim.opt.mouse = "a"
vim.opt.cmdheight = 2
vim.opt.showtabline = 2
vim.opt.showmode = true
vim.opt.cursorline = true

vim.cmd("highlight Cursor ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold")
vim.cmd("hi Cursorline guifg=red guibg=blue")

vim.opt.ignorecase = true
