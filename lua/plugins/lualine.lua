return {
    { -- LuaLine
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        opts = {
            options = {
                icons_enabled = false,
                theme = 'gruvbox-flat',
                component_separators = { left = '', right = '' },
                section_separators = { left = '', right = '' },
                disabled_filetypes = {
                    statusline = {},
                    winbar = {},
                },
                ignore_focus = {},
                always_divide_middle = true,
                globalstatus = false,
                refresh = {
                    statusline = 100,
                    tabline = 100,
                    winbar = 100,
                },
            },
            sections = {
                lualine_a = { 'mode' },
                lualine_b = { 'branch', 'diff', 'diagnostics' },
                lualine_c = { 'filename' },
                lualine_x = { 'encoding', 'fileformat', 'filetype' },
                lualine_y = { 'progress' },
                lualine_z = { 'location' },
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = { 'filename' },
                lualine_x = { 'location' },
                lualine_y = {},
                lualine_z = {},
            },
            tabline = {
                lualine_a = {
                    {
                        'tabs',
                        tab_max_length = 20,
                        max_length = vim.o.columns,
                        mode = 2,
                        path = 0,
                        use_mode_colors = false,

                        tabs_color = {
                            -- Same values as the general color option can be used here.
                            active = 'lualine_b_normal',     -- Color for active tab.
                            inactive = 'lualine_b_inactive', -- Color for inactive tab.
                        },

                        show_modified_status = false,
                        symbols = {
                            modified = '[+]',
                        },

                        fmt = function(name, context)
                            local buflist = vim.fn.tabpagebuflist(context.tabnr)
                            local winnr = vim.fn.tabpagewinnr(context.tabnr)
                            local bufnr = buflist[winnr]
                            local mod = vim.fn.getbufvar(bufnr, '&mod')

                            return name .. (mod == 1 and ' +' or '')
                        end
                    }
                }
            },
            winbar = {},
            inactive_winbar = {},
            extensions = {},
        },
    },
}
