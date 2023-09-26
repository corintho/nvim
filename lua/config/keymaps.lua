-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps hereby
vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Resume" }
)
vim.keymap.set("n", "<leader>gm", ":Neogit<CR>", { desc = "magit" })
vim.keymap.set("i", "kj", "<Esc>", { noremap = true })
