-------------------------------------------------------------------------------
-- Colors and Fonts
-------------------------------------------------------------------------------
-- Disable Background Color Erase (BCE) so that color schemes work properly
-- when Vim is used inside tmux and GNU screen
vim.cmd([[
    if &term =~ '256color'
        set t_ut=
    endif
]])

-- Dark mode is the shit
vim.opt.background = "dark"

-- Colorscheme
vim.cmd.colorscheme "catppuccin-mocha"

-- Set utf8 as standard encoding and en_US as the standard language
vim.opt.encoding = "utf8"

-- Use Unix as the standard file type
vim.opt.ffs = {"unix", "dos", "mac"}

-- Transparency in vim when using transparent terminals
vim.cmd([[ hi! Normal ctermbg=NONE guibg=NONE ]])
