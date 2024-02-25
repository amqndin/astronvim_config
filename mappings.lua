-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)

return function(maps)
  function vscode_map(mode, keybind, command)
    maps[mode][keybind] = { "<cmd>call VSCodeNotify('".. command .."')<CR>"}
    return maps[mode][keybind]
  end
  
  if vim.g.vscode then -- vscode only
    vscode_map("n", "<leader>fw", "workbench.action.findInFiles")
    vscode_map("n", "<leader>q", "workbench.action.closeWindow")
    vscode_map("n", "<leader>w", "workbench.action.files.saveFiles")
    vscode_map("n", "<leader>e", "workbench.action.toggleSidebarVisibility")
    vscode_map("n", "<leader>o", "workbench.view.explorer")
    vscode_map("n", "<leader>ff", "workbench.action.quickOpen")
    vscode_map("n", "<leader>c", "workbench.action.closeActiveEditor")
    vscode_map("i", "jk", "vscode-neovim.escape")
  else -- neovim only 
    maps.x["<leader>p"] = { "\"_dP", desc = "Paste text without yanking selection"}
    maps.t["<esc><esc>"] = { "<c-\\><c-n>", desc = "Enter Normal Mode" }
    maps.t["jk"] = { "<c-\\><c-n>", desc = "Enter Normal Mode" }
    maps.i["<C-BS>"] = { "<c-w>", desc = "Delete previous word" }
    maps.n["<leader>fs"] = { "<cmd>SessionManager! load_session<cr>", desc = "Find sessions" }
    -- run files
    maps.n["<leader>r"] = { desc = "Run this file as ..."}
    maps.n["<leader>rp"] = { ":!python \"%\"<esc>", desc = "Python"}
    maps.n["<leader>rn"] = { ":!node \"%\"<esc>", desc = "Nodejs"}
    maps.n["<leader>d"] = { desc = "Run this folder as ..."}
    maps.n["<leader>db"] = { ":!beet<esc>", desc = "Beet"}
    maps.n["<leader>dp"] = { ":!python .<esc>", desc = "Python"}
    maps.n["<leader>dn"] = { ":!node .<esc>", desc = "Nodejs"}
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
