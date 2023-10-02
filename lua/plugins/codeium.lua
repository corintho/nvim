return {
  {
    "Exafunction/codeium.vim",
    lazy = false,
    config = function()
      vim.keymap.set("i", "<M-g>", function()
        return vim.fn["codeium#Accept"]()
      end, { expr = true })
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_x, {
        function()
          return vim.fn["codeium#GetStatusString"]()
        end,
      })
    end,
  },
}
