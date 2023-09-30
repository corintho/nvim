return {
  {
    "gennaro-tedesco/nvim-possession",
    dependencies = {
      "ibhagwan/fzf-lua",
    },
    opts = {
      autoswitch = {
        enable = true,
      },
    },
    keys = {
      {
        "<leader>qr",
        function()
          require("nvim-possession").list()
        end,
        desc = "Restore session",
      },
      {
        "<leader>qn",
        function()
          require("nvim-possession").new()
        end,
        desc = "New session",
      },
      {
        "<leader>qs",
        function()
          require("nvim-possession").update()
        end,
        desc = "Save session",
      },
      {
        "<leader>qd",
        function()
          require("nvim-possession").delete()
        end,
        desc = "Delete current session",
      },
    },
    config = true,
    init = function()
      -- Manipulate main menu
      local dashboard = require("alpha.themes.dashboard")
      local buttons = dashboard.section.buttons.val
      -- not great, but works for now
      local index = 7
      local session_button =
        dashboard.button("s", " " .. " Sessions", [[:lua require("nvim-possession").list() <cr>]])
      session_button.opts.hl = "AlphaButtons"
      session_button.opts.hl_shortcut = "AlphaShortcut"
      -- remove builtin persistence session button
      table.remove(buttons, index)
      table.insert(buttons, index, session_button)
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_c, {
        require("nvim-possession").status,
        cond = function()
          return require("nvim-possession").status() ~= nil
        end,
      })
    end,
  },
}
