return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      {
        "<leader>e",
        "<cmd>Neotree reveal<cr>",
        desc = "Explorer",
      },
    },
    opts = {
      filesystem = {
        follow_current_file = {
          enabled = true,
          leave_dirs_open = false,
        },
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
