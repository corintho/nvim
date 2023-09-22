return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  ---@class CatppuccinOptions
  opts = {
    term_colors = true,
    transparent_background = false,
    color_overrides = {
      mocha = {
        base = "#000000",
        mantle = "#000000",
        crust = "#000000",
      },
    },
  },
}
