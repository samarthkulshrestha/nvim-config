-------------------------------------------------------------------------------
-- NVIM User Interface
-------------------------------------------------------------------------------
-- termguicolors
vim.opt.termguicolors = true

-- Set 7 lines to the cursor - when moving vertically using j/k
vim.opt.scrolloff = 7
vim.opt.sidescrolloff = 5

-- Line Numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Display different types of white spaces.
vim.opt.list = true
vim.opt.listchars = "tab:>+,trail:+,extends:>,precedes:<"

-- Turn on the Wild menu
vim.opt.wildmenu = true

-- Case insensitive
vim.opt.wildignorecase = true

-- Ignore compiled files
vim.opt.wildignore = [[*.o,*~,*.pyc,*/.git/*,*/.hg/*,*/.svn/*,
*/.DS_Store,*/node_modules/*"]]

-- Highlight the line on which the cursor lives.
vim.opt.cursorline = true

-- Highlight the column on which the cursor lives.
-- vim.o.cursorcolumn = true

-- Global statusline
vim.opt.laststatus = 3

-- If lightline/airline is enabled, don't show mode under it
vim.opt.showmode = false

-- Mouse support
vim.opt.mouse = "a"

-- Height of the command bar
vim.opt.cmdheight = 2

-- Lower update time
vim.opt.updatetime = 300

-- Don't pass messages to |ins-completion-menu|.
vim.opt.shortmess = "ilmnrwxc"

-- A buffer becomes hidden when it is abandoned
vim.opt.hidden = true

-- Ignore case when searching
vim.opt.ignorecase = true

-- When searching try to be smart about cases 
vim.opt.smartcase = true

-- Auto toggle smart case of for ex commands
-- Assumes 'set ignorecase smartcase'
vim.cmd([[
    augroup dynamic_smartcase
        autocmd!
        autocmd CmdLineEnter : set nosmartcase
        autocmd CmdLineLeave : set smartcase
    augroup END
]])

-- Highlight search results
vim.opt.hlsearch = true

-- Makes search act like search in modern browsers
vim.opt.incsearch = true

-- Don't redraw while executing macros (good performance config)
vim.opt.lazyredraw = true

-- For regular expressions turn magic on
vim.opt.magic = true

-- Show matching brackets when text indicator is over them
vim.opt.showmatch = true

-- How many tenths of a second to blink when matching brackets
vim.opt.mat = 2

-- No annoying sound on errors
vim.opt.errorbells = false
vim.opt.visualbell = false
vim.opt.tm = 500

-- Add a bit extra margin to the left
vim.opt.foldcolumn = '0'

-- Allow color schemes to do bright colors without forcing bold.
vim.cmd([[
    if &t_Co == 8 && $TERM !~# '^linux\|^Eterm'
        set t_Co=16
    endif
]])

vim.g.one_allow_italics = 1

-- set fillchars=vert::
vim.opt.fillchars = 'vert::'

-- Toggle vertical line for keeping lines short
vim.cmd([[
    set colorcolumn=
    fun! ToggleCC()
        if &cc == ''
            " set cc=1,4,21
            set cc=80
        else
            set cc=
        endif
    endfun
    nnoremap <silent> <leader><F9> :call ToggleCC()<CR>
]])

-- Highlight chars in with lines longer than 80 chars in red
vim.cmd([[
    hi OverLength ctermbg=none cterm=none
    match OverLength /\%>80v/
    fun! s:LongLineHLToggle()
        if !exists('w:longlinehl')
            let w:longlinehl = matchadd('ErrorMsg', '.\%>80v', 0)
            echo "Long lines highlighted"
        else
            call matchdelete(w:longlinehl)
            unl w:longlinehl
            echo "Long lines unhighlighted"
        endif
    endfunction

    nnoremap <silent> <F9> :call<SID>LongLineHLToggle()<cr>
]])


