-- ***********************************
-- ********** basic options **********
-- ***********************************

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = true
vim.opt.incsearch = true
vim.g.mapleader = ' '

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

vim.opt.shiftround = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true

-- clipboard
vim.opt.clipboard:append { 'unnamedplus' }


-- command
--command! LuaSnipEdit :lua require("luasnip.loaders").edit_snippet_files()
