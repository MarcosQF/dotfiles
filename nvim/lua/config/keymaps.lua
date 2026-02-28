-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.keymap.set({ "n", "v" }, "gh", "^", { desc = "Início da linha" })
vim.keymap.set({ "n", "v" }, "gl", "g_", { desc = "Fim da linha" })
