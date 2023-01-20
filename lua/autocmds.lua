-- Switching between relative number and nonrelative number
vim.api.nvim_command([[
  autocmd InsertEnter * :set number norelativenumber
  autocmd InsertLeave * :set number relativenumber
]])

