return {
  {
    "nord-dark",
    dir = "~/Dev/nvim/nord-dark.nvim",
    name = "nord-dark",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme nordic")
      vim.cmd("doautocmd ColorScheme")
    end,
  },
}
