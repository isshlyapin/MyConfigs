require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("i", "<S-TAB>", "<C-d>")


map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
