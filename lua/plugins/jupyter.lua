return {
  -- This allows you to open .ipynb files as if they were python files
  {
    "GCBallesteros/jupytext.nvim",
    config = true,
  },
  -- Comment out image.nvim if you don't have lua/luarocks installed
  -- {
  --   "3rd/image.nvim",
  -- },
  -- This is the 'VS Code-like' interactive runner
  {
    "benlubas/molten-nvim",
    version = "^1.0.0", -- use version <2.0.0 if you write python
    build = ":UpdateRemotePlugins",
    init = function()
      -- Use text output instead of images (works without image.nvim)
      vim.g.molten_image_provider = nil
      vim.g.molten_output_win_max_height = 20
    end,
  },
}
