return {
  "folke/snacks.nvim",
  opts = {
    image = { enabled = true },
    explorer = { hidden = true },
    picker = {
      sources = {
        explorer = {
          hidden = true,
          ignored = true,
        },
        grep = {
          regex = false,
        },
        grep_word = {
          args = {},
        },
      },
    },
  },
}
