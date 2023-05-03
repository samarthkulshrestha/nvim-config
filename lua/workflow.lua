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
