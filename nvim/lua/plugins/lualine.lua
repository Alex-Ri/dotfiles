return {
  "nvim-lualine/lualine.nvim",
  config = function()
    local custom_theme = require("lualine.themes.auto")
    custom_theme.normal.c.bg = "none"
    custom_theme.insert.c.bg = "none"
    custom_theme.visual.c.bg = "none"
    require("lualine").setup({
      options = {
        theme = custom_theme,
      },
    })
  end,
}
