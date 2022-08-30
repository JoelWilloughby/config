
local actions = require('telescope.actions')
require('telescope').setup {
    defaults = {
        mappings = {
            n = {
                ['q'] = actions.close
            }
        },
    }
}

vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, nil)
vim.keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep, nil)
vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, nil)
vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, nil)
