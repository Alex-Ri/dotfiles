return {
  {
    "nvim-neotest/neotest",
    dependencies = { "rcasia/neotest-java" },
    opts = {
      adapters = {
        ["neotest-java"] = {
          -- This helps when you have multiple modules or nested projects
          ignore_wrapper = false,
          -- Ensure this matches the version you downloaded earlier
          junit_jar = vim.fn.expand("$HOME")
            .. "/.local/share/nvim/neotest-java/junit-platform-console-standalone-1.10.1.jar",
        },
      },
    },
  },
}
