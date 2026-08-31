return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        phpactor = {
          before_init = function(params)
            params.processId = vim.NIL
          end,
          cmd = {
            "docker",
            "run",
            "--rm",
            "-i",
            "-v",
            vim.fn.getcwd() .. ":" .. vim.fn.getcwd(),
            "-w",
            vim.fn.getcwd(),
            "achertovsky/php-infrastructure:phpactor",
          },
        },
      },
    },
  },
}
