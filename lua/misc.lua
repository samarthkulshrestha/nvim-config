-------------------------------------------------------------------------------
-- Misc
-------------------------------------------------------------------------------
-- Quickly open a scratch buffer for scribble
vim.keymap.set("", "<leader>q", "<cmd>:e ./scratch<cr>")

-- Quickly open a scratch markdown buffer for scribble
vim.keymap.set("", "<leader>x", "<cmd>:e ./scratch.md<cr>")

-- Toggle paste mode on and off
vim.keymap.set("", "<leader>pp", "<cmd>:setlocal paste!<cr>")

-- Pressing <leader>ss will toggle spell checking
vim.keymap.set("", "<leader>ss", "<cmd>:setlocal spell!<cr>")


