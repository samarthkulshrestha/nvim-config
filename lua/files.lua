-------------------------------------------------------------------------------
-- Files, backups, and undo
-------------------------------------------------------------------------------
-- Turn backup off, since most stuff is in SVN, git etc. anyway...
vim.opt.backup = false
vim.opt.wb = false
vim.opt.swapfile = false

-- Search down into subfolders
-- Provides tab-completion for all file-related tasks
vim.opt.path = [[.,/usr/include,,**]]

-- Manually refresh file
vim.keymap.set('n', '<F5>', '<cmd>:e!<cr>')

-- Persistent undo
vim.cmd [[
    try
        set undodir=~/.config/nvim/undodir
        set undofile
    catch
    endtry
]]
