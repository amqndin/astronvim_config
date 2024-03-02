return {
  {
    "catppuccin/nvim",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        term_colors = true,
        dim_inactive = {
          enabled = true,
        },
        integrations = {
          neotree = true,
          aerial = true,
          harpoon = true,
          hop = true,
          leap = true,
          bufferline = true,
          notify = true,
          mason = true,
          window_picker = true,
          which_key = true,
          indent_blankline = {
            enabled = true,
            scope_color = "blue", -- catppuccin color (eg. `lavender`) Default: text
            colored_indent_levels = true,
          },
          telescope = { enabled = true },
          noice = true,
          lsp_trouble = true,
        },
      })
    end,
  },
}
