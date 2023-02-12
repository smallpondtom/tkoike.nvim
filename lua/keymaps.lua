vim.api.nvim_set_keymap("n", "<Space>", "<NOP>", { noremap = true, silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- vim.api.nvim_set_keymap("n", "E", "ge", { noremap = true, silent = true })

-- highlight
vim.api.nvim_set_keymap("n", "<Leader>h", ":set hlsearch!<CR>", { noremap = true, silent = true })

-- Explorer
vim.api.nvim_set_keymap("n", "<Leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- Window Navigation
-- vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { silent = true })
-- vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { silent = true })
-- vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { silent = true })
-- vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { silent = true })

-- Esc Insert Mode --
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "kj", "<Esc>", { noremap = true, silent = true })

-- Indenting --
vim.api.nvim_set_keymap("v", "<", "<gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", ">", ">gv", { noremap = true, silent = true })

-- Tabs --
vim.api.nvim_set_keymap("n", "<Leader><TAB>", ":bnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader><S-TAB>", ":bprevious<CR>", { noremap = true, silent = true })

-- Other --
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<leader>x", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Resize window using <ctrl> arrow keys --
vim.keymap.set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- Move Lines --
vim.keymap.set("n", "<A-j>", ":m .+1<cr>==", { desc = "Move down" })
vim.keymap.set("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
vim.keymap.set("i", "<A-j>", "<Esc>:m .+1<cr>==gi", { desc = "Move down" })
vim.keymap.set("n", "<A-k>", ":m .-2<cr>==", { desc = "Move up" })
vim.keymap.set("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })
vim.keymap.set("i", "<A-k>", "<Esc>:m .-2<cr>==gi", { desc = "Move up" })

-- better up/down --
-- vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
-- vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- luasnip --
vim.api.nvim_set_keymap("i", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("s", "<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("s", "<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", { noremap = true, silent = true })

-- LSP --
vim.api.nvim_set_keymap('n', 'gm', "<cmd>lua vim.lsp.buf.implementation()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-s>', "<cmd>lua vim.lsp.buf.signature_help()<CR>", { noremap = true, silent = true })
vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, { noremap = true, silent = true })

-- Barbar --
vim.api.nvim_set_keymap("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-0>", "<Cmd>BufferLast<CR>", { noremap = true, silent = true })
