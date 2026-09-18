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
          ignored = true,
        },
        grep = {
          hidden = true,
          ignored = true,
        },
      },
    },
  },
}
