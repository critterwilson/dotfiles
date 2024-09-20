vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "
vim.opt.swapfile = false
-- """"""""""""""""""""
-- " Cursor Settings
-- """"""""""""""""""""
-- "  1 -> blinking block
-- "  2 -> solid block
-- "  3 -> blinking underscore
-- "  4 -> solid underscore
-- "  5 -> blinking vertical bar
-- "  6 -> solid vertical bar
vim.cmd([[
let &t_SI.="\e[6 q" "SI = INSERT mode
let &t_SR.="\e[5 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)
]])
