return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim", -- required
    "nvim-telescope/telescope.nvim", -- optional
    "sindrets/diffview.nvim", -- optional
    "ibhagwan/fzf-lua", -- optional
  },
  opts = {
    disable_context_highlighting = true,
  },
  keys = {
    {
      "<leader>gm",
      function()
        require("neogit").open({ kind = "auto" })
      end,
      desc = "magit",
    },
  },
  config = true,
}
