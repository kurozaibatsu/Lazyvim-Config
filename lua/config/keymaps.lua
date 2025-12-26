-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- q: Save file
vim.keymap.set("n", "q", ":write<CR>", { noremap = true, silent = true })

-- cmake-tools keymap
local cmake = require("cmake-tools")
local has_cmake_tools = vim.fn.exists(':CMakeBuild') == 2
if has_cmake_tools and cmake.is_cmake_project() then
    vim.keymap.set("n", "<leader>cb", ":CMakeBuild<CR>", { desc = "CMakeBuild" })
    vim.keymap.set("n", "<leader>cx", ":CMakeRun<CR>", { desc = "CMakeRun" })
end
