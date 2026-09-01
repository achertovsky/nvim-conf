return {
  {
    "ccaglak/namespace.nvim",
    keys = {
      { "<leader>cn", "<cmd>GetNamespace<cr>", desc = "Insert Namespace" },
      { "<leader>cx", "<cmd>GetExtName<cr>", desc = "Expand Class to FQN" },
    },
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
  },
}
