return {
  -- plugins
  { "ThePrimeagen/vim-be-good", event = "VeryLazy" },
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
}
