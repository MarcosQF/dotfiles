return {
  "voldikss/vim-floaterm",
  lazy = false,
  keys = {
    -- Atalhos para abrir e fechar terminal
    { "<C-/>", "<CMD>FloatermToggle<CR>", mode = { "n", "t" }, desc = "Toggle Terminal" },
    { "<C-_>", "<CMD>FloatermToggle<CR>", mode = { "n", "t" }, desc = "Toggle Terminal" },
    { "<Esc>", "<CMD>FloatermHide<CR>", mode = "t", desc = "Esconder Terminal" },

    { "<leader>T", ":FloatermNew<CR>", mode = "n", desc = "Novo Terminal (Floaterm)" },

    -- Atalhos para navegar entre terminais
    { "<A-l>", [[<C-\><C-n>:FloatermNext<CR>]], mode = "t", desc = "Próximo Terminal" },
    { "<A-h>", [[<C-\><C-n>:FloatermPrev<CR>]], mode = "t", desc = "Terminal Anterior" },
  },
  init = function()
    -- Tamanho da tela do terminal
    vim.g.floaterm_width = 0.95
    vim.g.floaterm_height = 0.95
  end,
}
