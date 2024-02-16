return {
  -- themes
  { "arturgoms/moonbow.nvim", lazy = true },
  {
    "catppuccin/nvim",
    config = function()
      require("catppuccin").setup({
        term_colors = true,
      })
    end,
    lazy = true,
  },
  { "folke/tokyonight.nvim", lazy = true },
  { "rebelot/kanagawa.nvim", lazy = true },
  -- 
  -- plugins
  "AstroNvim/astrocommunity",
  { "ThePrimeagen/vim-be-good", event = "VeryLazy" },
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
    ft = {"mcfunction", "bolt"},
    lazy = true,
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    },
    config = function()
      require("noice").setup({
        lsp = {
          -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
          override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
            ['config.lsp.hover.enabled'] = false,
            ['config.lsp.signature.enabled'] = false
          },
          hover = { enabled = false },
          signature = { enabled = false },
          progress = { enabled = false }
        },
        messages = { enabled = false },
        presets = {
          bottom_search = false, -- use a classic bottom cmdline for search
          command_palette = true, -- position the cmdline and popupmenu together
          long_message_to_split = true, -- long messages will be sent to a split
          inc_rename = false, -- enables an input dialog for inc-rename.nvim
          lsp_doc_border = false, -- add a border to hover docs and signature help
        },
      })
    end
  }
  -- {
  --   "andweeb/presence.nvim",
  --   lazy = false,
  --   opts = {
  --     -- General options
  --     auto_update         = true,                       -- Update activity based on autocmd events (if `false`, map or manually execute `:lua package.loaded.presence:update()`)
  --     neovim_image_text   = "hands down best editor",   -- Text displayed when hovered over the Neovim image
  --     enable_line_number  = false,                      -- Displays the current line number instead of the current project
  --     show_time           = false,                      -- Show the timer
  --   },
  -- },
}
