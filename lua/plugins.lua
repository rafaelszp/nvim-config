vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {'neoclide/coc.nvim', branch = 'release'}
  use 'artanikin/vim-synthwave84'
  use 'nvim-treesitter/nvim-treesitter' 
  use 'tpope/vim-commentary'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'lukas-reineke/indent-blankline.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { "nvim-telescope/telescope-file-browser.nvim" }
  use {
    "ur4ltz/surround.nvim",
    config = function()
      require"surround".setup {mappings_style = "surround"}
    end
  }
  use {
    'nvim-lualine/lualine.nvim',
--    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use 'nvim-tree/nvim-web-devicons'
  use {'romgrk/barbar.nvim', wants = 'nvim-web-devicons'}

  use 'preservim/nerdtree'
  use {
		'phaazon/hop.nvim',
		branch = 'v2', -- optional but strongly recommended
		config = function()
			-- you can configure Hop the way you like here; see :h hop-config
			require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
		end
	}

  use 'fedepujol/move.nvim'
  use {'mg979/vim-visual-multi', branch = 'master'}

  use {'ms-jpq/coq_nvim', branch = 'coq'}
  use {'ms-jpq/coq.artifacts', branch = 'artifacts'}
  use {'ms-jpq/coq.thirdparty', branch = '3p'}

  use {
    'gelguy/wilder.nvim',
    config = function()
      -- config goes here
    end,
  }
  
  --use 'sheerun/vim-polyglot'
  use 'dense-analysis/ale' --trying to use ale instead of polyglot(too much slow)

  use {
    's1n7ax/nvim-search-and-replace',
    config = function() require'nvim-search-and-replace'.setup() end,
  }
  use {
    'notjedi/nvim-rooter.lua',
    config = function() require'nvim-rooter'.setup() end
  }
  use 'preservim/nerdcommenter'
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

  -- You add plugins here  
end)

