return {
  -- themes
  {
    "catppuccin/nvim",
    config = function()
      require("catppuccin").setup({
        term_colors = true,
        integrations = { neotree= true },
      })
    end,
    lazy = true,
  },
  -- plugins
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
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
  },
  -- {
  --   "phaazon/hop.nvim",
  --   version = "v2",
  --   lazy = false,
  --   config = function()
  --       require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
  --   end
  -- },
  {
    "ggandor/leap.nvim",
    lazy = false,
    config = function()
      require('leap').create_default_mappings()
      require('leap').opts.special_keys.prev_target = '<bs>'
      require('leap').opts.special_keys.prev_group = '<bs>'
      require('leap.user').set_repeat_keys('<cr>', '<bs>')
    end
  }
}
