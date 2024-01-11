-- mini.pairs
require('mini.pairs').setup()

-- mini.surrounds
require('mini.surround').setup({
    mappings = {
        add = 'ca', -- Add surrounding in Normal and Visual modes
        delete = 'cd', -- Delete surrounding
        find = 'cf', -- Find surrounding (to the right)
        find_left = 'cF', -- Find surrounding (to the left)
        highlight = 'ch', -- Highlight surrounding
        replace = 'cr', -- Replace surrounding
        update_n_lines = 'cn', -- Update `n_lines`

        suffix_last = 'l', -- Suffix to search with "prev" method
        suffix_next = 'n', -- Suffix to search with "next" method
    },
})
--[[
-- Basic usage
-- Add surroundings around word (e.g., "()")
--     command: `saiw(`
-- Remove surroundings around word/string (e.g., "()")
--     command: `sd(`
-- Replace surroundings around word from "()" to "``"
--     command: `sr(``
--]]

-- mini.comments
require('mini.comment').setup()

