return {
  {
    "folke/snacks.nvim",
    opts = {
      image = {
        enabled = true,
        doc = {
          inline = false,
        },
      },
      picker = {
        hidden = true,
        ignored = true,

        exclude = {
          ".git",
          "node_modules",
          ".nuxt",
          ".next",
        },
        files = {
          ignored = false,
          hidden = true,
        },
      },
    },
  },
}
