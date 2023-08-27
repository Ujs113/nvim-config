local ftree = require('nvim-tree')
ftree.setup()
vim.keymap.set('n', '<leader>n', '<cmd> :NvimTreeToggle <CR>')
vim.keymap.set('n', '<leader>t', '<cmd> :NvimTreeFocus <CR>')
