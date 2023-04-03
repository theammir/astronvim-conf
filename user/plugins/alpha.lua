math.randomseed(os.time())
require("user.art")
return {
  "goolord/alpha-nvim",
  cmd = "Alpha",
  opts = function()
    local dashboard = require "alpha.themes.dashboard"
    dashboard.section.header.val = ASCII_ARRAY[math.random(#ASCII_ARRAY)]
    dashboard.section.header.opts.hl = "DashboardHeader"

    local button = require("astronvim.utils").alpha_button
    dashboard.section.buttons.val = {
      button("LDR S l", "  Last Session  "),
      button("LDR f o", "  Recents  "),
      button("LDR n", "  New File  "),
      button("LDR f f", "  Find File  "),
      button("LDR f w", "  Find Word  "),
      button("LDR f '", "  Bookmarks  "),
      button("LDR f a", "  Configure  "),
    }
    dashboard.section.buttons.opts = {
      spacing = 0,
    }

    dashboard.config.layout[1].val = vim.fn.max { 2, vim.fn.floor(vim.fn.winheight(0) * 0.2) }
    dashboard.config.layout[3].val = (vim.g.neovide and { 7 } or { 1 })[1]
    dashboard.config.opts.noautocmd = true
    return dashboard
  end,
  config = require "plugins.configs.alpha",
}
