return {
  "bjarneo/nes.nvim",
  dir = "/Users/alex/dev/nes.nvim",
  priority = 1000,
  opts = {
    disable = {
      background = true,
      italic_comments = true,
    },

    plugins = {
      indent_blankline = true,
      snacks = true,
      telescope = false,
      treesitter = false,
    },
  },
  config = function(_, opts)
    require("nes").setup(opts)
    vim.cmd.colorscheme("nes")
  end,
}
