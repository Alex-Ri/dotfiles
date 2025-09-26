return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
    },
  },
  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      opts.completion.menu.auto_show = false
    end,
  },
}
