return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      {
        "<leader>e",
        "<cmd>Neotree toggle<cr>",
        desc = "Explorer",
      },
    },
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_by_name = {},
        },
      },
    },
  },
  {
    "folke/snacks.nvim",
    keys = {
      { "<leader>e", false },
    },
  },
}
