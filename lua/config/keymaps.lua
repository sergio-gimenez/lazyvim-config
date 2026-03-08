-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- -- Redirect deletions to the black hole register
vim.keymap.set({ "n", "v" }, "d", '"_d', { desc = "Delete without yanking" })
vim.keymap.set({ "n", "v" }, "x", '"_x', { desc = "Delete char without yanking" })
vim.keymap.set({ "n", "v" }, "c", '"_c', { desc = "Change without yanking" })

-- Keep 'p' from overwriting your register when pasting over a visual selection
vim.keymap.set("v", "p", '"_dP', { desc = "Paste without overwriting register" })
