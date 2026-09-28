return {
  {
    "kevalin/mermaid.nvim",
    ft = { "mermaid" },
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("mermaid").setup()
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "mermaid" })
    end,
  },
}
