-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- q: Save file
vim.keymap.set("n", "q", ":write<CR>", { noremap = true, silent = true })

-- cmake-tools keymap
local has_cmake_lists = vim.fn.filereadable("CMakeLists.txt") == 1
local has_cmake_tools = vim.fn.exists(':CMakeBuild') == 2
if has_cmake_tools and has_cmake_lists then
    vim.keymap.set("n", "<leader>cb", ":CMakeBuild<CR>", { desc = "CMakeBuild" })
    vim.keymap.set("n", "<leader>cx", ":CMakeRun<CR>", { desc = "CMakeRun" })
end
