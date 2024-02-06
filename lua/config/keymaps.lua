-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--your favorite leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--all the copy pasta BS
vim.keymap.set({ "n", "v" }, "<C-x>", [["+x]])
vim.keymap.set({ "n", "v" }, "<C-y>", [["+y]])
vim.keymap.set({ "n", "i" }, "<C-p>", [["+gP]])
