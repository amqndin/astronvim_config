-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)

return function(maps)
  if vim.g.vscode then -- vscode only
    maps.n["<leader>fw"] = { "<Cmd>call VSCodeNotify('workbench.action.findInFiles')<CR>"}
    maps.n["<leader>w"] = { "<cmd>call VSCodeNotify('workbench.action.files.saveFiles')<CR>"}
    maps.n["<leader>e"] = { "<cmd>call VSCodeNotify('workbench.action.toggleSidebarVisibility')<CR>"}
    maps.n["<leader>o"] = { "<cmd>call VSCodeNotify('workbench.view.explorer')<CR>"}
  else -- neovim only 
    maps.x["p"] = { "\"_dP", desc = "Paste text"}
    maps.t["<esc>"] = { "<c-\\><c-n>", desc = "Enter Normal Mode" }
    maps.i["<C-BS>"] = { "<c-w>", desc = "Delete previous word" }
    maps.c["<C-BS>"] = { "<c-w>", desc = "Delete previous word" }
  end
  ------- Global keybindings both vscode and neovim
  -- Move Lines
  maps.n["<M-j>"] = { "<cmd>m .+1<cr>==", desc = "Move down" }
  maps.n["<M-k>"] = { "<cmd>m .-2<cr>==", desc = "Move up" }
  maps.i["<M-j>"] = { "<esc><cmd>m .+1<cr>==gi", desc = "Move down" }
  maps.i["<M-k>"] = { "<esc><cmd>m .-2<cr>==gi", desc = "Move up" }
  maps.x["<M-j>"] = { ":m '>+1<cr>gv=gv", desc = "Move down" }
  maps.x["<M-k>"] = { ":m '<-2<cr>gv=gv", desc = "Move up" }

  return maps
end
