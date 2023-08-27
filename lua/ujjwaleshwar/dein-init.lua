-- Set Dein base path (required)
local dein_base = '/home/ujjwaleshwar/.local/share/dein'

-- Set Dein source path (required)
local dein_src = '/home/ujjwaleshwar/.local/share/dein/repos/github.com/Shougo/dein.vim'

-- Set Dein runtime path (required)
vim.opt.runtimepath:append(dein_src)

--Import Dein as a lua module
local dein = require('dein')

dein.begin(dein_base)

dein.add(dein_src)

-- Your plugins go here:
-- call dein#add('Shougo/neosnippet.vim')
-- call dein#add('Shougo/neosnippet-snippets')
dein.add('nvim-treesitter/nvim-treesitter', { hook_post_update = 'TSUpdate' })
dein.add('nvim-lua/plenary.nvim') -- Dependency for telescope
dein.add('nvim-telescope/telescope.nvim', { rev = '0.1.1' })
dein.add('shaunsingh/nord.nvim')
-- Plugins required for LSP
dein.add('neovim/nvim-lspconfig')
dein.add('williamboman/mason.nvim', { hook_post_update = 'MasonUpdate' })
dein.add('williamboman/mason-lspconfig.nvim')
-- Plugins for autocomplete
dein.add('hrsh7th/nvim-cmp')
dein.add('hrsh7th/cmp-nvim-lsp')
dein.add('L3MON4D3/LuaSnip')
dein.add('hrsh7th/cmp-buffer')
dein.add('hrsh7th/cmp-path')
-- Plugins for file tree
dein.add('nvim-tree/nvim-tree.lua')
dein.add('nvim-tree/nvim-web-devicons')
-- Auto fill braces
dein.add('windwp/nvim-autopairs')

-- Finish Dein initialization (required)
dein.end_()

-- Install not-installed plugins on startup
if dein.check_install() then
    dein.install()
end
