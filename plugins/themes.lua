return {
  -- themes
  { "arturgoms/moonbow.nvim", lazy = false },
  { "folke/tokyonight.nvim", lazy = false },
  { "rebelot/kanagawa.nvim", lazy = false },
  {
    "catppuccin/nvim", lazy = false,
    config = function()
      require("catppuccin").setup({
        term_colors = true,
      })
    end,
  },
}
