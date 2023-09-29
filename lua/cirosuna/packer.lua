vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.3',
		requires = { {'nvim-lua/plenary.nvim'} }

	}

	--colorscheme
	use ({
		'bluz71/vim-nightfly-colors',
		as = 'nightfly',
		config = function()
			vim.cmd('colorscheme nightfly')
		end
	
	})

	use({ 'rose-pine/neovim', as = 'rose-pine' })
	use ('prichrd/netrw.nvim')

	--facilitazione vita
	use('nvim-tree/nvim-web-devicons') --aggiunta icone
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('ThePrimeagen/harpoon')
	use('tpope/vim-fugitive')
	
	--lsp
	use ('neovim/nvim-lspconfig')
	use ('hrsh7th/cmp-nvim-lsp')
	use ('williamboman/mason.nvim')
	use ('williamboman/mason-lspconfig.nvim')

	--cmp
	use ('hrsh7th/cmp-buffer')
	use ('hrsh7th/cmp-path')
	use ('hrsh7th/cmp-cmdline')
	use ('hrsh7th/nvim-cmp')
	use ('saadparwaiz1/cmp_luasnip')

	--snip
	use ('L3MON4D3/LuaSnip')
	use ('dcampos/nvim-snippy')
	use ('dcampos/cmp-snippy')
	use ('rafamadriz/friendly-snippets')

	--cacca
	use ('nvim-lualine/lualine.nvim')
	
	
end)
