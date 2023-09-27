-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps hereby
vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Resume" }
)
vim.keymap.set("n", "<leader>gm", function()
  require("neogit").open({ kind = "auto" })
end, { desc = "magit" })

vim.keymap.set("i", "kj", "<Esc>", { noremap = true })

vim.keymap.set("n", "<leader>hc", function()
  require("nvim-highlight-colors").toggle()
end, { desc = "toggle color", noremap = true })
