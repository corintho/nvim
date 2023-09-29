return {
  "brenoprata10/nvim-highlight-colors",
  opts = {
    render = "background",
  },
  keys = {
    {
      "<leader>hc",
      function()
        require("nvim-highlight-colors").toggle()
      end,
      desc = "toggle color",
    },
  },
  event = "BufEnter",
  config = true,
}
