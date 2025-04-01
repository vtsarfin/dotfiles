return {
  "rachartier/tiny-inline-diagnostic.nvim",
  enabled = false,
  event = "VeryLazy", -- Or `LspAttach`
  config = function()
    require("tiny-inline-diagnostic").setup()
    vim.keymap.set("", "<Leader>l", require("tiny-inline-diagnostic").toggle, { desc = "Toggle diagnostic" })
  end,
}
