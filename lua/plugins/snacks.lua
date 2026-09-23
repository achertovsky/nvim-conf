return {
  "folke/snacks.nvim",
  opts = {
    terminal = {
      win = {
        position = "right",
      },
    },

    picker = {
      sources = {
        files = {
          hidden = true,
          ignored = false,
        },
        grep = {
          hidden = true,
          ignored = true,
        },
      },
    },
  },
}
