return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        phpactor = {
          enabled = false,
        },

        intelephense = {
          enabled = true,

          settings = {
            intelephense = {
              files = {
                maxSize = 5000000,
                exclude = {
                  "**/.git/**",
                  "**/node_modules/**",
                },
              },
            },
          },
        },
      },
    },
  },
}
