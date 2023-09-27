return {
  "folke/which-key.nvim",
  opts = function()
    require("which-key").register({
      ["<leader>"] = {
        h = {
          name = "+highlight",
        },
      },
    })
  end,
}
