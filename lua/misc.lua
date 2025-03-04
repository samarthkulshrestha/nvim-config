-------------------------------------------------------------------------------
-- Misc
-------------------------------------------------------------------------------
-- Quickly open a scratch buffer for scribble
vim.keymap.set('', '<leader>bs', '<cmd>:e ./scratch<cr>', { desc = 'Open a [s]cratch buffer' })

-- Quickly open a scratch markdown buffer for scribble
vim.keymap.set('', '<leader>bm', '<cmd>:e ./scratch.md<cr>', { desc = 'Open a scratch [m]arkdown buffer' })

-- Pressing <leader>ss will toggle spell checking
vim.keymap.set('', '<leader>wp', '<cmd>:setlocal spell!<cr>', { desc = 'Toggle s[p]ellcheck' })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
