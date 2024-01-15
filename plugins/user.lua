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
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
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
        require("nvim-surround").setup({--[[ Configuration here ]]})
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


  -- SYNTAX FOR ADDING / CUSTOMIZING PLUGINS:
  --
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}
