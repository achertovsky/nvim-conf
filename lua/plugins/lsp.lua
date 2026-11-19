local function read_intelephense_license()
  local license_path = vim.fn.expand("~/.config/intelephense/global/license.txt")

  if vim.fn.filereadable(license_path) ~= 1 then
    vim.notify("Intelephense licence file is missing: " .. license_path, vim.log.levels.ERROR)
    return nil
  end

  local ok, lines = pcall(vim.fn.readfile, license_path)
  local license = ok and vim.trim(table.concat(lines, "\n")) or ""

  if license == "" then
    vim.notify("Intelephense licence file is unreadable or empty: " .. license_path, vim.log.levels.ERROR)
    return nil
  end

  return license
end

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

          init_options = {
            licenceKey = read_intelephense_license(),
          },

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
