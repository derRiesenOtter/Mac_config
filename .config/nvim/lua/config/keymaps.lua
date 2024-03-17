-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

return {
  vim.cmd([[com Se set spell spelllang=en]]),
  vim.cmd([[com Sd set spell spelllang=de]]),
  vim.cmd([[com Sde set spell spelllang=de,en]]),
}
