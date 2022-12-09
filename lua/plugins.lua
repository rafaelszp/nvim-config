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
--  use {'mg979/vim-visual-multi', 'branch': 'master'}
  use {'mg979/vim-visual-multi', branch = 'master'}


  -- You add plugins here  
end)

