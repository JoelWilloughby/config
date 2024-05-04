-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- setup nvim-tree
require('nvim-tree').setup {
    hijack_cursor = true,
    update_focused_file = {
        enable = true,
        update_root = false,
    },
    modified = {
        enable = true,
    },
    view = {
        centralize_selection = true,
        preserve_window_proportions = false,
        number = true,
        relativenumber = true,
        width = {
            max = 100,
        },
    },
    actions = {
        open_file = {
            resize_window = true,
        }
    }
}
