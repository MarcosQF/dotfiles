return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruff = {
          settings = {
            args = {
              "--line-length=80",
              "--select=I,F401",
              "--ignore=ALL",
            },
          },
        },
      },
    },
  },
}
