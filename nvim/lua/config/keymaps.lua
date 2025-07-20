-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "o", "<Nop>")
vim.keymap.set("n", "O", "<Nop>")
vim.keymap.set("n", "o", "o<Esc>", { desc = "Open line below (no insert)" })
vim.keymap.set("n", "O", "O<Esc>", { desc = "Open line above (no insert)" })
vim.keymap.set("n", "oo", "o", { desc = "Open line below and insert" })
vim.keymap.set("n", "OO", "O", { desc = "Open line above and insert" })
