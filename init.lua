require 'general'
require 'ui'
require 'files'
require 'text'
require 'visual'
require 'workflow'
require 'editing'
require 'misc'
require 'helper'
require 'snips'

-- lazy.nvim
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
    vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require('lazy').setup {
    'tpope/vim-sleuth',
    'lambdalisue/suda.vim',
    'unblevable/quick-scope',
    'tpope/vim-fugitive',

    require 'plugins.mini',
    require 'plugins.gitsigns',
    require 'plugins.telescope',
    require 'plugins.nvim-cmp',
    require 'plugins.lsp',
    -- require 'plugins.conform',

    { -- Colorscheme
        'catppuccin/nvim',
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            vim.cmd.colorscheme 'catppuccin-mocha'
            vim.cmd.hi 'Comment gui=none'
        end,
    },

    require 'plugins.treesitter',
    require 'plugins.markview',
    -- require 'plugins.vimtex',
    require 'plugins.lualine',
    require 'plugins.todo-comments',
    require 'plugins.which-key',
}
