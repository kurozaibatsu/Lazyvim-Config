-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- q Save file
vim.keymap.set({"n", "x"}, "q", ":write<CR>", { noremap = true, silent = true })

-- fast scroll
vim.keymap.set({"n", "x"}, "J", "<C-d>", { noremap = true, silent = true })
vim.keymap.set({"n", "x"}, "K", "<C-u>", { noremap = true, silent = true })
vim.keymap.set({"n", "x"}, "<C-d>", "<Nop>", { noremap = true, silent = true })
vim.keymap.set({"n", "x"}, "<C-u>", "<Nop>", { noremap = true, silent = true })

-- CTRL+U Redo
vim.keymap.set("n", "<C-u>", ":redo<CR>", { noremap = true, silent = true })

-- ;; Enter Normal mode
vim.keymap.set({"x", "i"}, ";;", "<esc>", { noremap = true, silent = true })


-- <leader>r Reset buffer
vim.keymap.set("n", "<leader>r", ":edit!<CR>", { noremap = true, silent = true, desc = "Reset buffer" })

-- <leader>j Join lines
vim.keymap.set("n", "<leader>j", ":normal! J<CR>", { noremap = true, silent = true, desc = "Join lines" })
