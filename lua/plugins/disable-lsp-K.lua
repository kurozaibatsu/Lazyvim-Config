return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ['*'] = {  -- This will apply to all LSP servers
        keys = {
          { "K", false },
          { "<leader>ck", "<cmd>lua vim.lsp.buf.hover()<CR>", has = "hover", desc = "hover"},
        },
      },
    },
  },
}
