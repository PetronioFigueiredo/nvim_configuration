vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set relativenumber")
vim.cmd("set nu")
--vim.cmd(":'0")--
vim.keymap.set("n", "<A-Tab>", ":tabnext <CR>", {})
vim.g.mapleader = " "
