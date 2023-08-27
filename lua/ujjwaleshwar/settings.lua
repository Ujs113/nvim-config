-- Set numbers and relative numbering
vim.o.number = true
vim.o.relativenumber = true

vim.o.noswapfile = true
-- Search settings
vim.o.hlsearch = false -- Turn off search highlights
vim.o.ignorecase = true
vim.o.incsearch = true
-- Set tab space options
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.o.termguicolors = true
-- Sets python interpreter according to the environment
local conda_prefix = os.getenv("CONDA_PREFIX")
if (conda_prefix) then
    vim.g.python_host_prog = conda_prefix .. "/bin/python"
    vim.g.python3_host_prog = conda_prefix .. "/bin/python3"
else
    vim.g.python_host_prog = "python"
    vim.g.python3_host_prog = "python3"
end
