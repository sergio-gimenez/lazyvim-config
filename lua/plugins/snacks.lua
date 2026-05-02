return {
  "folke/snacks.nvim",
  opts = {
    image = { enabled = true },
    picker = {
      sources = {
        explorer = {
          hidden = true,
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
