require("ujjwaleshwar.remap")
-- Disabling netrw for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
require("ujjwaleshwar.dein-init")
-- Set options for the Nord theme
vim.g.nord_contrast = true
vim.g.nord_borders = true
-- Enable the Nord theme
require('nord').set()
require("ujjwaleshwar.settings")
