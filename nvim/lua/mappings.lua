require "nvchad.mappings"
-- add yours here

local map = vim.keymap.set
-- map("n", "I", api.tree.toggle_gitignore_filter, opts("Toggle Filter: Git Ignore"))

map("i", "<S-TAB>", "<C-d>")

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
