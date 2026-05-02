return {
  -- 1. Força o LSP de HTML padrão a funcionar também no Angular
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        html = {
          filetypes = { "html", "htmlangular" },
        },
      },
    },
  },

  -- 2. Adiciona os snippets manuais para o @for e @if no LuaSnip
  {
    "L3MON4D3/LuaSnip",
    opts = function()
      local ls = require("luasnip")

      -- Garante que o htmlangular herde todos os snippets clássicos do HTML
      ls.filetype_extend("htmlangular", { "html" })

      local s = ls.snippet
      local t = ls.text_node
      local i = ls.insert_node

      ls.add_snippets("htmlangular", {
        -- Snippet para o @for
        s("@for", {
          t("@for ("),
          i(1, "item"),
          t(" of "),
          i(2, "items()"),
          t("; track "),
          i(3, "item.id"),
          t(") {"),
          t({ "", "  " }),
          i(0),
          t({ "", "}" }),
        }),

        -- Snippet para o @if
        s("@if", {
          t("@if ("),
          i(1, "condition"),
          t(") {"),
          t({ "", "  " }),
          i(0),
          t({ "", "}" }),
        }),

        -- Snippet para o @empty
        s("@empty", {
          t("@empty {"),
          t({ "", "  " }),
          i(0),
          t({ "", "}" }),
        }),
      })
    end,
  },
}
