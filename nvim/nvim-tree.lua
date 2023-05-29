-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- setup nvim-tree
require('nvim-tree').setup {
    view = {
        preserve_window_proportions = true,
    },

    actions = {
        open_file = {
            resize_window = false,
        }
    }
}
