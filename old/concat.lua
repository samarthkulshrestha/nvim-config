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
vim.keymap.set("n", "<F5>", "<cmd>:e!<cr>")

-- Persistent undo
vim.cmd([[
    try
        set undodir=~/.config/nvim/undodir
        set undofile
    catch
    endtry
]])


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


-------------------------------------------------------------------------------
-- Visual mode related
-------------------------------------------------------------------------------
-- Visual mode pressing * or # searches for the current selection
-- Super useful! From an idea by Michael Naumann
vim.keymap.set(
    "v",
    "<silent> *",
    "<cmd>:<C-u>call VisualSelection('', '')<cr>/<C-R>=@/<cr><cr>",
    {noremap = true}
)

vim.keymap.set(
    "v",
    "<silent> #",
    "<cmd>:<C-u>call VisualSelection('', '')<cr>?<C-R>=@/<cr><cr>",
    {noremap = true}
)


-------------------------------------------------------------------------------
-- Moving around, tabs, windows and buffers
-------------------------------------------------------------------------------
-- Disable highlight when <esc><esc> is pressed
vim.keymap.set("", "<esc><esc>", "<cmd>:noh<cr>")

-- Smart way to move between windows Meta (ALT) + j/k/h/l
vim.keymap.set("n", "<M-h>", "<C-w>h")
vim.keymap.set("n", "<M-j>", "<C-w>j")
vim.keymap.set("n", "<M-k>", "<C-w>k")
vim.keymap.set("n", "<M-l>", "<C-w>l")

-- Resizing
vim.keymap.set("n", "<C-M-h>", "2<C-w><")
vim.keymap.set("n", "<C-M-l>", "2<C-w>>")
vim.keymap.set("n", "<C-M-k>", "<C-w>-")
vim.keymap.set("n", "<C-M-j>", "<C-w>+")

-- Cycle windows
vim.keymap.set("n", "<M-o>", "<C-W>w")
vim.keymap.set("n", "<M-o>", "<C-W>w")
vim.keymap.set("n", "<M-o>", "<esc><C-W>w")
vim.keymap.set("n", "<M-o>", "<esc><C-W>w")

-- Close the current buffer
vim.keymap.set("", "<leader>bd", "<cmd>:Bclose<cr><cmd>:tabclose<cr>gT")
vim.keymap.set("", "<leader>bc", "<cmd>:Bclose<cr>")

-- Close all the buffers
vim.keymap.set("", "<leader>ba", "<cmd>:bufdo bd<cr>")

-- Switch buffers
vim.keymap.set("", "<leader>l", "<cmd>:bnext<cr>")
vim.keymap.set("", "<leader>h", "<cmd>:bprevious<cr>")

-- Useful mappings for managing tabs
vim.keymap.set("", "<leader>tn", "<cmd>:tabnew<cr>")
vim.keymap.set("", "<leader>to", "<cmd>:tabonly<cr>")
vim.keymap.set("", "<leader>tc", "<cmd>:tabclose<cr>")
vim.keymap.set("", "<leader>tm", "<cmd>:tabmove ")
vim.keymap.set("", "<leader>tt", "<cmd>:tabnext<cr>")

-- Let 'tl' toggle between this and the last accessed tab
vim.cmd([[
    let g:lasttab = 1
    nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
    au TabLeave * let g:lasttab = tabpagenr()
]])

-- Opens a new tab with the current buffer's path
-- Super useful when editing files in the same directory
-- vim.keymap.set("", "<leader>te", '<C-r>=expand("%:p:h")<cr>/')
vim.cmd([[map <leader>te :tabedit <C-r>=expand("%:p:h")<cr>/]])

-- Switch CWD to the directory of the open buffer
vim.keymap.set("", "<leader>cd", "<cmd>:cd %:p:h<cr>:pwd<cr>")

-- Specify the behavior when switching between buffers 
vim.cmd([[
    try
      set switchbuf=useopen,usetab,newtab
      set stal=2
    catch
    endtry
]])

-- Return to last edit position when opening files (You want this!)
vim.cmd([[
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
]])
-------------------------------------------------------------------------------
-- Editing mappings
-------------------------------------------------------------------------------
-- Move a line of text using Ctrl+[jk]
vim.keymap.set("n", "<C-j>", "mz<cmd>:m+<cr> `z")
vim.keymap.set("n", "<C-k>", "mz<cmd>:m-2<cr> `z")
vim.keymap.set("v", "<C-j>", "<cmd>:m'>+<cr>`<my`>mzgv`yo`z")
vim.keymap.set("v", "<C-k>", "<cmd>:m'<-2<cr>`>my`<mzgv`yo`z")

-- Delete trailing white space on save, useful for some filetypes ;)
vim.cmd([[
    fun! CleanExtraSpaces()
        let save_cursor = getpos(".")
        let old_query = getreg('/')
        silent! %s/\s\+$//e
        call setpos('.', save_cursor)
        call setreg('/', old_query)
    endfun
]])

vim.keymap.set("", "<leader>cs", "<cmd>:call CleanExtraSpaces()<cr>")


-------------------------------------------------------------------------------
-- Misc
-------------------------------------------------------------------------------
-- Quickly open a scratch buffer for scribble
vim.keymap.set("", "<leader>q", "<cmd>:e ./scratch<cr>")

-- Quickly open a scratch markdown buffer for scribble
vim.keymap.set("", "<leader>x", "<cmd>:e ./scratch.md<cr>")

-- Toggle paste mode on and off
vim.keymap.set("", "<leader>pp", "<cmd>:setlocal paste!<cr>")

-- Pressing <leader>ss will toggle spell checking
vim.keymap.set("", "<leader>ss", "<cmd>:setlocal spell!<cr>")


-------------------------------------------------------------------------------
-- Helper functions
-------------------------------------------------------------------------------
-- Don't close window when deleting a buffer
vim.cmd([[
    function! BufcloseCloseIt()
        let l:currentBufNum = bufnr("%")
        let l:alternateBufNum = bufnr("#")

        if buflisted(l:alternateBufNum)
            buffer #
        else
            bnext
        endif

        if bufnr("%") == l:currentBufNum
            new
        endif

        if buflisted(l:currentBufNum)
            execute("bdelete! ".l:currentBufNum)
        endif
    endfunction

    command! Bclose call BufcloseCloseIt()
]])

vim.cmd([[
    function! CmdLine(str)
        call feedkeys(":" . a:str)
    endfunction
]])

vim.cmd([[
    function! VisualSelection(direction, extra_filter) range
        let l:saved_reg = @"
        execute "normal! vgvy"

        let l:pattern = escape(@", "\\/.*'$^~[]")
        let l:pattern = substitute(l:pattern, "\n$", "", "")

        if a:direction == 'gv'
            call CmdLine("Ack '" . l:pattern . "' " )
        elseif a:direction == 'replace'
            call CmdLine("%s" . '/'. l:pattern . '/')
        endif

        let @/ = l:pattern
        let @" = l:saved_reg
    endfunction
]])


-------------------------------------------------------------------------------
-- Abbreviations / Snippets
-------------------------------------------------------------------------------
vim.cmd([[iab xdate <C-r>=strftime("%d/%m/%y %H:%M:%S")<cr>]])
vim.cmd([[iab sk Samarth Kulshrestha]])


