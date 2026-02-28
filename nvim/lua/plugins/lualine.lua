return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    -- Mantemos o 'auto' para ele herdar as cores do seu colorscheme atual
    opts.options.theme = "auto"

    -- Definimos os separadores que dão o visual do NvChad
    opts.options.component_separators = ""
    opts.options.section_separators = { left = "", right = "" }

    -- Ajustamos as seções para ficarem com o estilo de blocos
    opts.sections.lualine_a = {
      { "mode", separator = { left = "", right = "" }, right_padding = 2 },
    }

    opts.sections.lualine_z = {
      { "location", separator = { left = "", right = "" }, left_padding = 2 },
    }

    -- Removemos ícones redundantes se quiser um visual mais minimalista
    -- ou mantemos o padrão do LazyVim que já é muito bom.
  end,
}
