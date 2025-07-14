return {
  "saghen/blink.cmp",
  ---@class PluginLspOpts
  opts = {
    enabled = function()
      return not vim.tbl_contains({ "text", "txt", "diary" }, vim.bo.filetype)
    end,
    signature = { enabled = true },
    keymap = {
      preset = "super-tab",
      ["<Tab>"] = {
        require("blink.cmp.keymap.presets").get("super-tab")["<Tab>"][1],
        require("lazyvim.util.cmp").map({ "snippet_forward", "ai_accept" }),
        "fallback",
      },
      -- keymap = {
      --   preset = "default",
      --   ["<Tab>"] = { "select_next", "fallback" },
      --   ["<S-Tab>"] = { "select_prev", "fallback" },
    },
  },
}
