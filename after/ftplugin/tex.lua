-- ~/.config/nvim/after/ftplugin/tex.lua

-- 1. Enable Soft Wrap
vim.opt_local.wrap = true

-- 2. Wrap at words (prevents breaking words in the middle)
vim.opt_local.linebreak = true

-- 3. Visual Indentation (wrapped lines align with the start of the text)
vim.opt_local.breakindent = true

-- 4. Key Re-mapping (Crucial for Soft Wrap!)
-- These make 'j' and 'k' move by visual lines instead of physical lines.
-- Without this, pressing down jumps over the entire wrapped paragraph.
vim.keymap.set({ "n", "x" }, "j", "gj", { buffer = true })
vim.keymap.set({ "n", "x" }, "k", "gk", { buffer = true })
