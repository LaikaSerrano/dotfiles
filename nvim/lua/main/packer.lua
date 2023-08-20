vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'github/copilot.vim' 
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  --use ({
--	  'rose-pine/neovim',
--	  as = "rose-pine",
--	  config = function()
--		  vim.cmd('colorscheme rose-pine')
--	  end
  --})
  use{ 'anuvyklack/pretty-fold.nvim',
   config = function()
      require('pretty-fold').setup()
   end
}
  use {'iamcco/markdown-preview.nvim'}
  use 'frazrepo/vim-rainbow'
  use 'lervag/vimtex'
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
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
  use "savq/melange-nvim"
  use 'rebelot/kanagawa.nvim'
  use 'ellisonleao/gruvbox.nvim'
  use 'Mofiqul/dracula.nvim'
  use {
	  'glepnir/dashboard-nvim',
	  event = 'VimEnter',
	  config = function()
		  require('dashboard').setup {
			  config = {
				  center = {
					  {
						  icon = '',
						  icon_hl = 'group',
						  desc = 'description',
						  desc_hl = 'group',
						  key = 'shortcut key in dashboard buffer not keymap !!',
						  key_hl = 'group',
						  action = '',
					  },
				  },
				  footer = {},
			  } 
		  }
	  end,
	  requires = {'nvim-tree/nvim-web-devicons'}
  }

end)
