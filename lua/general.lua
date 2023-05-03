-------------------------------------------------------------------------------
-- General
-------------------------------------------------------------------------------
-- Sets how many lines of history VIM has to remember
vim.opt.history = 500

-- Enable filetype plugins
vim.cmd("filetype plugin indent on")

-- Set to auto read when a file is changed from the outside
vim.opt.autoread = true
vim.cmd("au FocusGained,BufEnter * checktime")

-- With a map leader it's possible to do extra key combinations
-- like <leader>w saves the current file
vim.g.mapleader = " "

-- Fast saving
vim.keymap.set("n", "<leader><cr>", "<cmd>:w!<cr>", { noremap = true })

-- Remove timeout for partially typed commands
vim.g.timeout = false

-- Shell
vim.opt.shell = "/usr/bin/zsh"

-- Removing delay
vim.opt.timeoutlen = 1000
vim.opt.ttimeoutlen = 0

-- Reload vim
vim.keymap.set("n", "<leader>sop", "<cmd>:source %<cr>", { noremap = true })

-- Write buffer through sudo
vim.cmd("cnoreabbrev w!! w suda://%")


