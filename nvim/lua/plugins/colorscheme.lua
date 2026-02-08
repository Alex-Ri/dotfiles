return {
  "Alex-Ri/nocturne.nvim",
  -- dir = "/Users/alex/Dev/nocturne.nvim",
  priority = 1000,
  opts = {
    disable = {
      background = true,
      italic_comments = true,
    },

    plugins = {
      telescope = false,
      treesitter = false,
    },
  },
  config = function(_, opts)
    require("nocturne").setup(opts)
    vim.cmd.colorscheme("nocturne")
  end,
}
