local grep_excludes = {
  ".git",
  "node_modules",
  ".nuxt",
  ".next",
  "**/dist/**",
  "**/package-lock.json",
  "**/pnpm-lock.yaml",
  "**/load-testing/**",
}

return {
  {
    "folke/snacks.nvim",
    init = function()
      -- open explorer on start when no files are passed
      vim.api.nvim_create_autocmd("VimEnter", {
        callback = function()
          if #vim.fn.argv() == 0 then
            require("snacks").picker("explorer")
          end
        end,
      })
    end,
    opts = {
      image = {
        enabled = true,
        doc = {
          inline = false,
        },
      },
      picker = {
        layout = {
          width = 0.9,
          height = 0.9,
        },
        sources = {
          explorer = {
            hidden = true,
            ignored = true,
            layout = { auto_hide = { "input" } },
            include = grep_excludes,
          },
        },
        hidden = true,
        ignored = false,
        exclude = grep_excludes,
      },
      files = {
        ignored = false,
        hidden = true,
      },
    },
  },
}
