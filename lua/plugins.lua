-- ***********************************
-- ********** plugin manage **********
-- ***********************************

--use plugins managers: Packer
return require("packer").startup(function()

	-- Packer can manage itself
	use("wbthomason/packer.nvim")

  -- web-devicons
  use {'nvim-tree/nvim-web-devicons'}

	-- statusline: lualine
	use ('nvim-lualine/lualine.nvim')

	-- bufferline
  use {'akinsho/bufferline.nvim', tag = "v3.*"}

	-- Colorscheme: catppuccin
	use { "catppuccin/nvim", as = "catppuccin" }

  -- nvim-treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- fzf.vim 
  --use ("junegunn/fzf")
  --use ("junegunn/fzf.vim")

  -- telescope.nvim (fuzzy finder)
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
  -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use ("nvim-telescope/telescope-file-browser.nvim")

  -- vista.vim
  use("liuchengxu/vista.vim")

  -- markdown-preview
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  -- nvim-tree
  use('nvim-tree/nvim-tree.lua')

  --fcitx
  use 'h-hg/fcitx.nvim'

  -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {
        'williamboman/mason.nvim',
        run = function() pcall(vim.cmd, 'MasonUpdate') end
      },
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }

  -- chatgpt
  use({
    "jackMort/ChatGPT.nvim",
      config = function()
        require("chatgpt").setup()
      end,
      requires = {
        "MunifTanjim/nui.nvim",
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim"
      }
  })
end)
