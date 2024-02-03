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
    maps.x["<leader>p"] = { "\"_dP", desc = "Paste text without yanking selection"}
    maps.t["<esc><esc>"] = { "<c-\\><c-n>", desc = "Enter Normal Mode" }
    maps.i["<C-BS>"] = { "<c-w>", desc = "Delete previous word" }
    maps.c["<C-BS>"] = { "<c-w>", desc = "Delete previous word" }
    maps.n["<leader>fs"] = { "<cmd>SessionManager! load_session<cr>", desc = "Find sessions" }
    maps.i["<a-l>"] = { "<c-\\><c-n>", desc = "Enter normal mode" }
    maps.v["<a-l>"] = { "<c-\\><c-n>", desc = "Enter normal mode" }
    maps.t["<a-l>"] = { "<c-\\><c-n>", desc = "Enter normal mode" }
  end
  ------- Global keybindings both vscode and neovim
  -- Move Lines
  maps.n["<a-j>"] = { "<cmd>m .+1<cr>==", desc = "Move down" }
  maps.n["<a-k>"] = { "<cmd>m .-2<cr>==", desc = "Move up" }
  maps.i["<a-j>"] = { "<esc><cmd>m .+1<cr>==gi", desc = "Move down" }
  maps.i["<a-k>"] = { "<esc><cmd>m .-2<cr>==gi", desc = "Move up" }
  maps.x["<a-j>"] = { ":m '>+1<cr>gv=gv", desc = "Move down" }
  maps.x["<a-k>"] = { ":m '<-2<cr>gv=gv", desc = "Move up" }

  return maps
end
