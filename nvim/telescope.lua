
local actions = require('telescope.actions')
require('telescope').setup {
    defaults = {
        mappings = {
            n = {
                ['q'] = actions.close
            }
        },
    },
    pickers = {
        live_grep = {
            additional_args = function(opts)
                return {"--hidden"}
            end
        }
    }

}

vim.keymap.set('n', '<leader>ff', function() require('telescope.builtin').find_files({hidden=true}) end, nil)
vim.keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep, nil)
vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, nil)
vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, nil)
