return {
    -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
        ---@diagnostic disable-next-line: missing-fields
        require('nvim-treesitter.configs').setup {
            ensure_installed = { 'bash', 'c', 'rust', 'markdown' },
            -- ignore_install = { 'org' },
            -- Autoinstall languages that are not installed
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
        }
    end,
}
