-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(
          bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- [";"] = { ":", desc = "Enter CMD mode" },
    ["<M-k>"] = { "<cmd>m -2<cr>", desc = "Move the line upwards" },
    ["<M-j>"] = { "<cmd>m +1<cr>", desc = "Move the line downwards" },
    -- ["<leader>fd"] = { "<cmd>Telescope opener<cr>", desc = "Open a directory" },
    -- ["<leader>fD"] = { "<cmd>Telescope opener hidden=true respect_gitignore=false<cr>", desc =
    -- "Open a directory, show hidden" },
    -- ["<leader>pr"] = { "<cmd>AstroReload<cr>", desc = "Reload configuration" },
    ["<leader>v"] = { "<cmd>SymbolsOutline<cr>", desc = "Toggle symbol outline" },
    ["<leader>pC"] = { "<cmd>e C:/Users/Technomancer/AppData/Local/nvim/lua/user/init.lua<cr>" },
    ["<C-u>"] = { "<C-u>zz" },
    ["<C-d>"] = { "<C-d>zz" },
    L = { function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer" },
    H = { function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer" },                                                                                                    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
