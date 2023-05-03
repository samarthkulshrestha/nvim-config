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


