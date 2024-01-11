local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find Files"})
vim.keymap.set('n', '<leader>fg', "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", { desc = "Live Grep"})
vim.keymap.set('n', '<leader>fc', builtin.current_buffer_fuzzy_find, { desc = "Live fuzzy search inside currently open buffer"})
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "Find Buffers"})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "Find Help Tags"})
vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, { desc = "Find Symbols"})
vim.keymap.set('n', '<leader>fo', builtin.oldfiles, { desc = "Find Old Files"})
vim.keymap.set('n', '<leader>fw', builtin.grep_string, { desc = "Find Word under Cursor"})
vim.keymap.set('n', '<leader>fq', builtin.quickfix, { desc = "List items in quickfix list" })
vim.keymap.set('n', '<leader>fm', builtin.marks, { desc = "List vim marks and their values" })
vim.keymap.set('n', '<leader>fj', builtin.jumplist, { desc = "List jump list entries" })
vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = "List normal mode keymaps" })
vim.keymap.set('n', '<leader>fy', "<cmd>Telescope neoclip<cr>", { desc = "Show clipboard" })
vim.keymap.set('n', '<leader>fu', "<cmd>Telescope undo<cr>", { desc = "Show undo history" })
vim.keymap.set('n', '<leader>gc', builtin.git_commits, { desc = "Search Git Commits"})
vim.keymap.set('n', '<leader>gb', builtin.git_bcommits, { desc = "Search Git Commits for Buffer"})

--[[
-- The below is from the Telescope Wiki
-- https://github.com/nvim-telescope/telescope.nvim/wiki/Configuration-Recipes#pickers
--]]
local telescope = require("telescope")
local telescopeConfig = require("telescope.config")
local actions = require "telescope.actions"

-- Clone the default Telescope configuration
local vimgrep_arguments = { unpack(telescopeConfig.values.vimgrep_arguments) }

-- I want to search in hidden/dot files.
table.insert(vimgrep_arguments, "--hidden")
-- I don't want to search in the `.git` directory.
table.insert(vimgrep_arguments, "--glob")
table.insert(vimgrep_arguments, "!**/.git/*")

telescope.setup({
	defaults = {
		-- `hidden = true` is not supported in text grep commands.
		vimgrep_arguments = vimgrep_arguments,
        path_display = { "truncate" },
        mappings = {
            i = {
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
            }
        }
	},
	pickers = {
		find_files = {
			-- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
			find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
		},
	},
    extensions = {
        undo = {
            use_delta = true,
            use_custom_command = nil, -- setting this implies `use_delta = false`. Accepted format is: { "bash", "-c", "echo '$DIFF' | delta" }
            side_by_side = false,
            diff_context_lines = vim.o.scrolloff,
            entry_format = "state #$ID, $STAT, $TIME",
            mappings = {
                i = {
                    ["<C-cr>"] = require("telescope-undo.actions").yank_additions,
                    ["<S-cr>"] = require("telescope-undo.actions").yank_deletions,
                    ["<cr>"] = require("telescope-undo.actions").restore,
                },
				n = {
					["y"] = require("telescope-undo.actions").yank_additions,
			        ["Y"] = require("telescope-undo.actions").yank_deletions,
				    ["r"] = require("telescope-undo.actions").restore,
				}, 
            },
        },
    },
})

-- Enable extensions
require("telescope").load_extension("neoclip")  -- clipboard management
require('telescope').load_extension('fzf')  -- fzf support
require("telescope").load_extension("undo")  -- undo lists
require("telescope").load_extension("live_grep_args")  -- livegrep expansion

