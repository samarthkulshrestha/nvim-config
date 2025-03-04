-------------------------------------------------------------------------------
-- Moving around, tabs, windows and buffers
-------------------------------------------------------------------------------
-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Smart way to move between windows Meta (ALT) + j/k/h/l
vim.keymap.set('n', '<M-h>', '<C-w>h')
vim.keymap.set('n', '<M-j>', '<C-w>j')
vim.keymap.set('n', '<M-k>', '<C-w>k')
vim.keymap.set('n', '<M-l>', '<C-w>l')

-- Resizing
vim.keymap.set('n', '<C-M-h>', '2<C-w><')
vim.keymap.set('n', '<C-M-l>', '2<C-w>>')
vim.keymap.set('n', '<C-M-k>', '<C-w>-')
vim.keymap.set('n', '<C-M-j>', '<C-w>+')

-- Cycle windows
vim.keymap.set('n', '<M-o>', '<C-W>w')
vim.keymap.set('n', '<M-o>', '<C-W>w')
vim.keymap.set('n', '<M-o>', '<esc><C-W>w')
vim.keymap.set('n', '<M-o>', '<esc><C-W>w')

-- Close the current buffer
vim.keymap.set('', '<leader>bd', '<cmd>:Bclose<cr><cmd>:tabclose<cr>gT', { desc = '[D]elete current buffer + tab' })
vim.keymap.set('', '<leader>bc', '<cmd>:Bclose<cr>', { desc = '[C]lose current buffer' })

-- Close all the buffers
vim.keymap.set('', '<leader>ba', '<cmd>:bufdo bd<cr>', { desc = 'Close [a]ll buffers' })

-- Switch buffers
vim.keymap.set('', '<leader>l', '<cmd>:bnext<cr>', { desc = 'Next buffer' })
vim.keymap.set('', '<leader>h', '<cmd>:bprevious<cr>', { desc = 'Previous buffer' })

-- Useful mappings for managing tabs
vim.keymap.set('', '<leader>tn', '<cmd>:tabnew<cr>', { desc = '[N]ew tab' })
vim.keymap.set('', '<leader>to', '<cmd>:tabonly<cr>', { desc = 'Keep [o]nly the current tab open' })
vim.keymap.set('', '<leader>tc', '<cmd>:tabclose<cr>', { desc = '[C]lose tab' })
vim.keymap.set('', '<leader>tm', '<cmd>:tabmove ', { desc = '[M]ove tab' })
vim.keymap.set('', '<leader>tt', '<cmd>:tabnext<cr>', { desc = 'Next [t]ab' })

-- Let 'tl' toggle between this and the last accessed tab
vim.cmd [[
    let g:lasttab = 1
    au TabLeave * let g:lasttab = tabpagenr()
]]
vim.keymap.set('n', '<leader>tl', '<cmd>exe "tabn ".g:lasttab<CR>', { desc = 'Toggle between current & [l]ast tab' })

-- Opens a new tab with the current buffer's path
-- Super useful when editing files in the same directory
vim.keymap.set('', '<leader>te', ':tabedit <C-r>=expand("%:p:h")<cr>/', { desc = '[E]dit new tab' })

-- Switch CWD to the directory of the open buffer
vim.keymap.set('', '<leader>wc', '<cmd>:cd %:p:h<cr>:pwd<cr>', { desc = '[C]hange CWD to directory of the open buffer' })

-- Specify the behavior when switching between buffers
vim.cmd [[
    try
      set switchbuf=useopen,usetab,newtab
      set stal=2
    catch
    endtry
]]

-- Return to last edit position when opening files (You want this!)
vim.cmd [[
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
]]

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
vim.cmd [[hi! link netrwMarkFile Search]]
