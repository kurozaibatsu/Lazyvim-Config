  return {
    -- Disable "t", "T", ";", "," keymaps
    "folke/flash.nvim",
    opts = {
        modes = {
            char = {
                keys = { "f", "F" },
            },
        },
    },
}