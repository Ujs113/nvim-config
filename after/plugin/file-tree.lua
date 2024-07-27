local ftree = require('nvim-tree')
ftree.setup()
vim.keymap.set('n', '<leader>t', '<cmd> :NvimTreeToggle <CR>')
vim.keymap.set('n', '<leader>tf', '<cmd> :NvimTreeFocus <CR>')
