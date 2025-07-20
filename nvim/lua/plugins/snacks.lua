return {
  {
    "folke/snacks.nvim",
    opts = {
      image = { enabled = true },

      picker = {
        hidden = true, -- for hidden files
        ignored = true, -- for .gitignore files
        sources = {
          files = {
            hidden = true,
            ignored = true,
            exclude = { "node_modules", ".nuxt" },
          },
        },
      },
    },
  },
}
