-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

local checktime_group = vim.api.nvim_create_augroup("user_checktime", { clear = true })

vim.api.nvim_create_autocmd({ "FocusGained", "TermClose", "TermLeave", "BufEnter", "CursorHold", "CursorHoldI" }, {
  group = checktime_group,
  callback = function()
    if vim.fn.mode() ~= "c" then
      vim.cmd("checktime")
    end
  end,
})
