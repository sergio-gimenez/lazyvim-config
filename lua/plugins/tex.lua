return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        texlab = {
          settings = {
            texlab = {
              inlayHints = {
                labelReferences = false,
              },
            },
          },
        },
      },
    },
  },
}
