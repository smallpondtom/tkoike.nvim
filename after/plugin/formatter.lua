require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		markdown = { "prettier" },
		c = { "clang-format" },
		cpp = { "clang-format" },
        json = { "prettier" },
		-- Conform will run multiple formatters sequentially
		python = { "isort", "black" },

		-- Use a sub-list to run only the first available formatter
		-- javascript = { { "prettierd", "prettier" } },
	},
})

-- mapping to run the formatter
vim.keymap.set({ "n", "v" }, "<Leader>f", "<cmd>lua require('conform').format()<CR>", { desc = "Format file or range" })
