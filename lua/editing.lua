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


