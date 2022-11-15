-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'gruvbox-community/gruvbox'
	use 'junegunn/fzf'
	use 'junegunn/fzf.vim'
	-- use {
	-- 	'junnplus/lsp-setup.nvim',
	-- 	requires = {
	-- 		'neovim/nvim-lspconfig',
	-- 		'williamboman/mason.nvim',
	-- 		'williamboman/mason-lspconfig.nvim',
	-- 	}
	-- }
	use 
		"neovim/nvim-lspconfig"
	
	use "terrortylor/nvim-comment"
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	--auto completion
	--
	use 'hrsh7th/nvim-compe'
	use 'hrsh7th/cmp-nvim-lsp'
	-- use 'hrsh7th/cmp-buffer'
	-- use 'hrsh7th/cmp-path'
	-- use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
	use 'L3MON4D3/LuaSnip' -- Snippets plugin
	use 'ThePrimeagen/vim-be-good'


	use('prettier/vim-prettier', { ['do'] = 'yarn install --frozen-lockfile --production' })

	use {
		'romgrk/barbar.nvim',
		requires = { 'kyazdani42/nvim-web-devicons' }
	}

	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional, for file icons
		},
		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}

	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}
end)
