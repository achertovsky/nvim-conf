return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        phpactor = { enabled = false }, -- Disables phpactor
        intelephense = {
          enabled = true, -- Ensures intelephense is used
        },
      },
    },
  },
}
