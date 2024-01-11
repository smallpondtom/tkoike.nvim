-- Ensure linters are pre-installed to avoid any errors/warnings
require('mason-tool-installer').setup{
    ensure_installed = {
        "flake8",
        "cpplint",
        "jsonlint",
        "luacheck",
        "rust-analyzer",
        "julia-lsp",
    }
}

-- Linter settings
local lint = require("lint")

lint.linters_by_ft = {
    python = { "flake8" },
    c = { "cpplint" },
    cpp = { "cpplint" },
    json = { "jsonlint" },
    lua = { "luacheck" },
}

local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

vim.api.nvim_create_autocmd(
    { "BufEnter", "BufWritePost", "InsertLeave" },
    {
        group = lint_augroup,
        callback = function()
            lint.try_lint()
        end,
    }
)

vim.keymap.set(
    "n",
    "<Leader>l",
    function()
        lint.try_lint()
    end,
    { desc = "Trigger linting"}
)
