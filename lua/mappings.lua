require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
-- Copy: Ctrl + C
vim.api.nvim_set_keymap("n", "<C-c>", '"+y', { noremap = true, silent = true }) -- normal mode (yank to clipboard)
vim.api.nvim_set_keymap("i", "<C-c>", '<Esc>"+yi', { noremap = true, silent = true }) -- insert mode (yank to clipboard)
vim.api.nvim_set_keymap("v", "<C-c>", '"+y', { noremap = true, silent = true }) -- visual mode (yank to clipboard)

-- Undo: Ctrl + Z
vim.api.nvim_set_keymap("n", "<C-z>", "u", { noremap = true, silent = true }) -- normal mode
vim.api.nvim_set_keymap("i", "<C-z>", "<C-o>u", { noremap = true, silent = true }) -- insert mode
vim.api.nvim_set_keymap("v", "<C-z>", "u", { noremap = true, silent = true }) -- visual mode

-- Redo: Ctrl + Y (like in Windows)
vim.api.nvim_set_keymap("n", "<C-y>", "<C-r>", { noremap = true, silent = true }) -- normal mode
vim.api.nvim_set_keymap("i", "<C-y>", "<C-o><C-r>", { noremap = true, silent = true }) -- insert mode
vim.api.nvim_set_keymap("v", "<C-y>", "<C-r>", { noremap = true, silent = true }) -- visual mode

-- Select all: Ctrl + A
vim.api.nvim_set_keymap("n", "<C-a>", "ggVG", { noremap = true, silent = true }) -- normal mode
vim.api.nvim_set_keymap("v", "<C-a>", "<Esc>ggVG", { noremap = true, silent = true }) -- visual mode
vim.api.nvim_set_keymap("i", "<C-a>", "<C-o>ggVG", { noremap = true, silent = true }) -- insert mode

-- Autocommands for Python
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.api.nvim_buf_set_keymap(
      0,
      "n",
      "<F5>",
      ":w<CR>:exec '!python3' shellescape(@%, 1)<CR>",
      { noremap = true, silent = true }
    )
    vim.api.nvim_buf_set_keymap(
      0,
      "i",
      "<F5>",
      "<Esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>",
      { noremap = true, silent = true }
    )
  end,
})
-- Autocommands for Python
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.api.nvim_buf_set_keymap(
      0,
      "n",
      "<F5>",
      ":w<CR>:exec '!python3' shellescape(@%, 1)<CR>",
      { noremap = true, silent = true }
    )
    vim.api.nvim_buf_set_keymap(
      0,
      "i",
      "<F5>",
      "<Esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>",
      { noremap = true, silent = true }
    )
  end,
})
-- -- DAP key mappings
-- vim.keymap.set("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Toggle DAP Breakpoint" })
--
-- -- DAP Python-specific key mappings
-- vim.keymap.set("n", "<leader>dpr", function()
--   require("dap-python").test_method()
-- end, { desc = "Run DAP Python test method" })
