-- vim-slime configs
vim.g.slime_target = "tmux"
vim.g.slime_paste_file = "$HOME/.slime_paste"
vim.cmd([[let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}]])
vim.g.slime_bracketed_paste = 1

vim.g.slime_cell_delimiter = "^\\s*##"
vim.g.slime_dont_ask_default = 1
vim.g.slime_bracketed_paste = 1
vim.g.slime_no_mappings = 1
vim.cmd([[
    nmap <C-c><C-v> <Plug>SlimeConfig
    nmap <C-c><C-c> <Plug>SlimeCellsSendAndGoToNext
    nmap <C-j><C-j> <Plug>SlimeCellsNext
    nmap <C-k><C-k> <Plug>SlimeCellsPrev
]])
