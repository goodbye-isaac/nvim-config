-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "<C-l>", "<Esc>")  -- 挿入モードで Ctrl+l を Esc に

-- Hキーで画面の最上部に移動
vim.keymap.set('n', 'H', 'H', { noremap = true, silent = true })

-- Lキーで画面の最下部に移動
vim.keymap.set('n', 'L', 'L', { noremap = true, silent = true })

