return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      diagnostics = {
        float = {
          border = "rounded",
        },
      },
    },
  },
  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      opts.completion.menu.auto_show = false
    end,
  },
  {
    "mason-org/mason.nvim",
    opts = {
      ui = {
        border = "rounded",
      },
    },
  },
  {
    "folke/noice.nvim",
    opts = {
      presets = {
        lsp_doc_border = true,
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        float = {
          border = "rounded",
        },
      },
    },
  },
  {
    "folke/noice.nvim",
    require("noice").setup({
      routes = {
        -- disable crazy java lsp notifications
        {
          filter = {
            event = "lsp",
            kind = "progress",
            find = "jdtls",
          },
          opts = { skip = true },
        },
      },
      presets = {
        lsp_doc_border = true,
      },
      views = {
        hover = {
          border = {
            style = "rounded",
          },
        },
      },
    }),
  },
}
