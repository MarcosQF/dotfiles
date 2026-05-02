return {
  {
    "linux-cultist/venv-selector.nvim",
    branch = "regexp",
    opts = {
      settings = {
        options = {
          notify_user_on_venv_change = true,
        },
        search = {
          my_project_venv = {
            command = "fd /bin/python$ --full-path --color never -E /proc -E /dev -E /sys -E /run",
          },
        },
      },
    },
    keys = {
      { "<leader>cv", "<cmd>VenvSelect<cr>", desc = "Select VirtualEnv" },
    },
  },
}
