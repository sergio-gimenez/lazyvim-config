-- Kotlin / Android dev for workbench-android
-- LSP: kotlin-language-server (fwcd) via Mason, wired into lspconfig.
-- Gradle build/run happens in a terminal (:terminal or tmux), not from here.
return {
  -- ensure the language server + ktlint formatter are installed
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "kotlin-language-server", "ktlint" })
    end,
  },

  -- register the LSP server
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        kotlin_language_server = {
          -- root at the gradle project so multi-module resolves
          root_dir = function(fname)
            local util = require("lspconfig.util")
            return util.root_pattern("settings.gradle.kts", "settings.gradle", "build.gradle.kts")(fname)
          end,
        },
      },
    },
  },

  -- treesitter grammars: kotlin + gherkin (Cucumber .feature files)
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "kotlin", "gherkin" })
    end,
  },
}
