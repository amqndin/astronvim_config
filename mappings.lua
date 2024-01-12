-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)

return function(maps)
  -- Move Lines
  maps.n["<C-j>"] = { "<cmd>m .+1<cr>==", desc = "Move down" }
  maps.n["<C-k>"] = { "<cmd>m .-2<cr>==", desc = "Move up" }
  maps.i["<C-j>"] = { "<esc><cmd>m .+1<cr>==gi", desc = "Move down" }
  maps.i["<C-k>"] = { "<esc><cmd>m .-2<cr>==gi", desc = "Move up" }
  maps.x["<C-j>"] = { ":m '>+1<cr>gv=gv", desc = "Move down" }
  maps.x["<C-k>"] = { ":m '<-2<cr>gv=gv", desc = "Move up" }

  maps.t["<esc>"] = { "<c-\\><c-n>", desc = "Enter Normal Mode" }
  maps.i["<C-BS>"] = { "<c-w>", desc = "Delete previous word" }
  maps.c["<C-BS>"] = { "<c-w>", desc = "Delete previous word" }
  return maps
end
