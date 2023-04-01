-- ***********************************
-- **********   init.lua   ***********
-- ***********************************

-- common config
require("plugin-config.catppuccin")
require("colorscheme")
require("basic")
require("keymappings")
require("plugins")
require("plugin-config.lualine")
require("plugin-config.bufferline")
require("plugin-config.treesitter")
require("plugin-config.nvimtree")
--require("plugin-config.mason")

-- lsp config
require("lsp.setup")

