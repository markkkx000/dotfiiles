return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        intelephense = {
          filetypes = { "php" },
          settings = {
            intelephense = {
              environment = {
                phpVersion = "8.2",
              },
            },
          },
        },
      },
    },
  },
}
