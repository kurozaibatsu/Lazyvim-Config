vim.g.gitblame_display_virtual_text = 0 -- Disable git-blame message

return{
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
    dependencies = { 'f-person/git-blame.nvim' },
  opts = function(_, opts)
  table.insert(opts.sections.lualine_z, {
    function()
      return  require("gitblame").get_current_blame_text()
    end,
    cond = require("gitblame").is_blame_text_available,
  })
  end,
}
