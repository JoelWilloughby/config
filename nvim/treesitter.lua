require('nvim-treesitter.configs').setup {
    highlight = {
        enable = true,
        disable = {}
    },

    indent = {
        enable = false,
        disable = {},
    },
    ensure_installed = {
        "c",
        "cpp",
        "rust",
        "python",
        "yaml",
    },

    -- Module
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
    }
}
