-- Packer installation required: https://github.com/wbthomason/packer.nvim
-- Install script: git clone --depth 1 https://github.com/wbthomason/packer.nvim  ~/.local/share/nvim/site/pack/packer/start/packer.nvim
require('plugins')
require('basics')
require('coc-config')
require('colors')
require('lualine-config')
require('barbar-config')
require('telescope-config')
require('indent-blankline-config')

require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",
  ignore_install = { "phpdoc" },
  context_commentstring = {
    enable = true
  },
  highlight = {
    enable = true,
    disable = { "lua" }
  },
  indent = {
    enable = true
  },
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true
  },

}

require('wilder-config')
require'nvim-rooter'.setup()

--Should run:
--COQdeps 
--then
--:COQnow --shut-up
