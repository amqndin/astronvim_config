return {
  -- themes
  {
    "arturgoms/moonbow.nvim",
    lazy = false
  },
  { "catppuccin/nvim", lazy = false },
  { "folke/tokyonight.nvim", lazy = false },
  { "rebelot/kanagawa.nvim", lazy = false },
  -- plugins
  "AstroNvim/astrocommunity",
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
    opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    },
  },
  {
    'Wansmer/treesj',
    keys = { '<space>m', '<space>j', '<space>s' },
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    config = function()
      require('treesj').setup({--[[ your config ]]})
    end,
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
    ---@diagnostic disable-next-line: missing-fields
      require("nvim-surround").setup({ --[[ config here]] })
    end
  },
  {
    "CrystalAlpha358/vim-mcfunction",
    event = "BufRead",
    ft = {"mcfunction"},
    lazy = true,
  },
  {
    "andweeb/presence.nvim",
    lazy = false,
    opts = {
      -- General options
      auto_update         = true,                       -- Update activity based on autocmd events (if `false`, map or manually execute `:lua package.loaded.presence:update()`)
      neovim_image_text   = "hands down best editor", -- Text displayed when hovered over the Neovim image
      enable_line_number  = false,                      -- Displays the current line number instead of the current project
      show_time           = false,                       -- Show the timer
    },
  },
}
