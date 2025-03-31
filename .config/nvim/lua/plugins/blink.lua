return {
  "saghen/blink.cmp",
  ---@class PluginLspOpts
  opts = {
    enabled = function()
      return not vim.tbl_contains({ "text", "txt", "diary" }, vim.bo.filetype)
    end,
    signature = { enabled = true },
    ---   keymap = {
    -- preset = "super-tab",
    keymap = {
      preset = "default",
      ["<Tab>"] = { "select_next", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },
    },
  },
}
