return {
  -- Install the VSCode colorscheme plugin
  {
    "mofiqul/vscode.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- Optional: Configure the style before loading
      require("vscode").setup({
        style = "dark", -- Alternatives: "light"
        transparent = false,
        italic_comments = true,
      })
    end,
  },

  -- Tell LazyVim to use it as the default theme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vscode",
    },
  },
}
