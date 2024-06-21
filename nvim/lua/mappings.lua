require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode with ;" })
map("n", "<leader>sv", ":source $MYVIMRC<CR>", { desc = "Easier sourcing of vimrc" })

map("n", "<leader>lf",
  function()
    vim.diagnostic.open_float( {border = "rounded" })
  end,
  { desc = "Open floating information window" }
)

-- Navigation with Ctrl
map("n", "<C-left>", "<C-w>h")
map("n", "<C-right>", "<C-w>l")
map("n", "<C-up>", "<C-w>k")
map("n", "<C-down>", "<C-w>j")
map("i", "<C-left>", "<C-\\><C-N><C-w>h")
map("n", "<C-right>", "<C-\\><C-N><C-w>l")
map("n", "<C-up>", "<C-\\><C-N><C-w>k")
map("n", "<C-down>", "<C-\\><C-N><C-w>j")

map("n", "<leader>b", "<C-o>", { desc = "Jump backward" })
map("n", "<leader>f", "<C-i>", { desc = "Jump forward" })

map("n", "<leader>tt", ":NvimTreeToggle<CR>")
map("n", "<leader>rt", ":NvimTreeRefresh<CR>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
