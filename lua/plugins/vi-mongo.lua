return {
  {
    "kopecmaciej/vi-mongo.nvim",
    cmd = { "ViMongo" },
    keys = {
      { "<leader>vm", "<cmd>ViMongo<cr>", desc = "ViMongo" },
    },
    config = function()
      require("vi-mongo").setup({
        persist = false,
      })
    end,
  },
}
