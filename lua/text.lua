-------------------------------------------------------------------------------
-- Text, tab, and indent related
-------------------------------------------------------------------------------
-- Use spaces instead of tabs
vim.o.expandtab = true

-- Be smart when using tabs ;)
vim.o.smarttab = true

-- 1 tab == 4 spaces
vim.o.shiftwidth = 4
vim.o.tabstop = 4

-- Auto indent
vim.o.autoindent = true

-- Smart indent
vim.o.smartindent = true

-- Hard wrap at 80 characters
vim.o.tw = 80

-- Always open new files in new tabs
vim.cmd([[
    augroup open-tabs
        au!
        au VimEnter * ++nested if !&diff | tab all | tabfirst | endif
    augroup end
]])


