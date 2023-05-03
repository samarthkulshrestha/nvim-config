-------------------------------------------------------------------------------
-- Plugins
-------------------------------------------------------------------------------
packer = require 'packer'

local use = packer.use
packer.reset()

packer.startup(function()

    use 'wbthomason/packer.nvim'

    use { "catppuccin/nvim", as = "catppuccin" }
    use 'jiangmiao/auto-pairs'
    use 'lambdalisue/suda.vim'
    use 'unblevable/quick-scope'
    use 'tpope/vim-surround'
    use 'tpope/vim-fugitive'


    use {'nvim-treesitter/nvim-treesitter',
        event = "BufWinEnter",
        config = function()

            require'nvim-treesitter.configs'.setup {

                ensure_installed = {"bash", "c", "cmake", "cpp", "comment", "cpp", "css",
                "git_config", "git_rebase", "gitattributes", "gitcommit", "gitignore",
                "graphql", "html", "http", "javascript", "json", "json5", "latex", "lua",
                "make", "markdown", "ninja", "python", "regex", "rust", "toml", "tsx",
                "typescript", "vim", "yaml", "org"},

                sync_install = false,

                ignore_install = {},

                highlight = {
                    enable = true,
                    disable = {},
                    additional_vim_regex_highlighting = {"org"},
                }

            }
        end
    }


    use {'itchyny/lightline.vim',
        event = "BufWinEnter",
        config = function()

            vim.cmd([[
            let g:lightline = {
                \ 'colorscheme': 'catppuccin',
                \ 'active': {
                    \   'left': [ ['mode', 'paste'],
                    \             ['fugitive', 'readonly', 'filename', 'modified' ],
                    \             [ 'charvaluehex' ] ],
                    \   'right': [ [ 'lineinfo' ], ['percent'],
                    \              ['fileformat', 'fileencoding', 'filetype'] ]
                    \ },
                \ 'component': {
                    \   'readonly': '%{&filetype=="help"?"":&readonly?"RO":""}',
                    \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
                    \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}',
                    \   'charvaluehex': '0x%B'
                    \ },
                \ 'component_visible_condition': {
                    \   'readonly': '(&filetype!="help"&& &readonly)',
                    \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
                    \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
                    \ },
                    \ 'separator': { 'left': ' ', 'right': ' ' },
                    \ 'subseparator': { 'left': ' ', 'right': ' ' }
                    \ }
                ]])

        end
    }


    use {'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }


    use {'machakann/vim-highlightedyank',
        config = function()
            vim.g.highlightedyank_highlight_duration = 400
        end
    }


    -- use {'edkolev/tmuxline.vim'}

end)


-------------------------------------------------------------------------------
-- Netrw
-------------------------------------------------------------------------------
vim.g.netrw_keepdir = 0
vim.g.netrw_winsize = 14
vim.g.netrw_altv = 1
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3
vim.g.netrw_browse_split = 4
vim.g.netrw_localcopydircmd = 'cp -r'
vim.cmd([[hi! link netrwMarkFile Search]])
