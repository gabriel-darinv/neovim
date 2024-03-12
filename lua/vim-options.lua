vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

vim.opt.colorcolumn = "120"
vim.opt.nu = true
vim.opt.rnu = true

vim.keymap.set('n', '<C-h>', '<C-w>h', {desc = 'Window left'})
vim.keymap.set('n', '<C-l>', '<C-w>l', {desc = 'Window right'})
vim.keymap.set('n', '<C-j>', '<C-w>j', {desc = 'Window down' })
vim.keymap.set('n', '<C-k>', '<C-w>k', {desc = 'Window up'})

vim.keymap.set('n', '<leader>ch', '<cmd> NvCheatsheet <CR>', { desc = 'Mapping cheatsheet'})

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
--vim.keymap.set('n','','',{ desc = ''})

--vim.keymap.set('n','<tab>',  ,{ desc = 'goto next buffer'})

--vim.keymap.set('n','<leader>x', ,{ desc = 'Close Buffer'})

