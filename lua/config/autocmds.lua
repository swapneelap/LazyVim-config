-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
local autocmd = vim.api.nvim_create_autocmd

-- Set ruler in python and tex files
autocmd({ "BufReadPost", "BufNewFile" }, {
  pattern = "*.py",
  command = "set colorcolumn=88",
})

autocmd({ "BufReadPost", "BufNewFile" }, {
  pattern = "*.tex",
  command = "set colorcolumn=80",
})
