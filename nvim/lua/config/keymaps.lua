-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Zellij navigation (override LazyVim's window nav to talk to Zellij instead)
local map = vim.keymap.set
map("n", "<C-h>", "<cmd>ZellijNavigateLeftTab<cr>", { desc = "Navigate left or tab", silent = true })
map("n", "<C-j>", "<cmd>ZellijNavigateDown<cr>", { desc = "Navigate down", silent = true })
map("n", "<C-k>", "<cmd>ZellijNavigateUp<cr>", { desc = "Navigate up", silent = true })
map("n", "<C-l>", "<cmd>ZellijNavigateRightTab<cr>", { desc = "Navigate right or tab", silent = true })
