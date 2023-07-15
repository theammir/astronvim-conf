return {
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
  --
  { "shaunsingh/nord.nvim", lazy = false },
  -- { "liuchengxu/vista.vim" },
  { "habamax/vim-godot",    lazy = false },
  {
    "simrat39/symbols-outline.nvim",
    event = "BufRead",
    config = function()
      require("symbols-outline").setup {}
    end,
  },
  { "EdenEast/nightfox.nvim", lazy = false }
}
