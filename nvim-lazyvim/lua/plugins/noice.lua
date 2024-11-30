return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
      cmdline = {
        view = "cmdline",
      },
      {
        format = {
          search_down = {
            view = "cmdline",
          },
          search_up = {
            view = "cmdline",
          },
        },
      },
    },
  },
}
