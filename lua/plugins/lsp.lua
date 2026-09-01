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

          -- Use the directory containing composer.json as the PHP project root.
          root_dir = function(bufnr, on_dir)
            local root = vim.fs.root(bufnr, {
              "composer.json",
            })

            if root then
              on_dir(root)
            end
          end,

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
