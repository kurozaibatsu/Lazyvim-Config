return {
  'stevearc/conform.nvim',
  opts = {
    formatters = {
      cmake_format = {
          stdin = true,
      },
    },
    formatters_by_ft = {
      cmake = { "cmake_format" },
    },
  },
}
