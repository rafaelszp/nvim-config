vim.g.mapleader = ";"
vim.o.number  =true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.expandtab = true
vim.o.incsearch = true
vim.o.tabstop = 2
vim.o.cursorline = true
vim.o.ignorecase = true
vim.o.hlsearch = false
vim.o.swapfile = false
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.scrolloff = 3
vim.o.errorbells = false
vim.o.shiftwidth = 2
vim.o.numberwidth = 4
vim.o.termguicolors = true
vim.o.colorcolumn = '255'
vim.o.showmode = false
vim.o.showtabline = 2
vim.o.signcolumn = 'yes'
vim.o.mouse = 'a'
vim.o.clipboard = 'unnamedplus'

vim.api.nvim_set_keymap('n', 'vs', ':vs<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'sp', ':sp<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-L>', '<C-W><C-L>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-H>', '<C-W><C-H>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-K>', '<C-W><C-K>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-J>', '<C-W><C-J>', { noremap = true })
vim.api.nvim_set_keymap('n', 'tn', ':tabnew<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'tk', ':tabnext<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'tj', ':tabprev<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'to', ':tabo<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-S>', ':%s/', { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>t", ":sp<CR> :term<CR> :resize 20N<CR> i", {noremap = true, silent = true})
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<F3>', ':NERDTreeToggle<CR>', { noremap = true, silent =  true })



local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local vopts = { noremap = true, silent = true }

vim.keymap.set('n', '<A-j>', ':MoveLine(1)<CR>', opts)
vim.keymap.set('n', '<A-k>', ':MoveLine(-1)<CR>', opts)
vim.keymap.set('n', '<A-h>', ':MoveHChar(-1)<CR>', opts)
vim.keymap.set('n', '<A-l>', ':MoveHChar(1)<CR>', opts)

-- Visual-mode commands
vim.keymap.set('v', '<A-j>', ':MoveBlock(1)<CR>', opts)
vim.keymap.set('v', '<A-k>', ':MoveBlock(-1)<CR>', opts)
vim.keymap.set('v', '<A-h>', ':MoveHBlock(-1)<CR>', opts)
vim.keymap.set('v', '<A-l>', ':MoveHBlock(1)<CR>', opts)

--hop
require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
map('n','<space>jj',':HopChar2<CR>',opts)
map('n','<space>jw',':HopWord<CR>',opts)

-- copy entire buffer to clipboard
map('n','<space>bY','gg"+yG<CR>``',opts) 
--map('n','gf', ':vert winc f<cr>',opts)
--copy file path to clipboard
map('n','yf', ":let @+=expand('%:p')<CR>",opts) 
-- copies pwd to clipboard: command yd
map('n','yd', ":let @+=expand('%:p:h')<CR>",opts)

map('n','<leader>a', ":Ack!<space>",opts)


map('n','<leader>b','0',opts)
map('v','<leader>b','0',vopts)
map('n','<leader>e','$',opts)
map('v','<leader>e','$',vopts)


-- vim.api.nvim_set_keymap('n', '<C-N>', ":Lexplore<CR> :vertical resize 30<CR>", { noremap = true })

-- vim.g["netrw_banner"] = 0
-- vim.g["netrw_liststyle"] = 3
-- vim.g["netrw_winsize"] = 25

vim.cmd([[
  hi ActiveWindow guibg=#1B1B26
  hi InactiveWindow guibg=#2d2d3b

  augroup WindowManagement
    autocmd!
    autocmd WinEnter * call Handle_Win_Enter()
  augroup END

  function! Handle_Win_Enter()
    setlocal winhighlight=Normal:ActiveWindow,NormalNC:InactiveWindow
    highlight SignColumn guibg=Normal:ActiveWindow,NormalNC:InactiveWindow
  endfunction
]])

-- ale
vim.cmd([[
  packloadall
  silent! helptags ALL
  let g:ale_disable_lsp = 1
  set guicursor+=a:-blinkwait175-blinkoff150-blinkon175

  let g:ale_fixers = {
  \   'javascript': ['prettier'],
  \   'css': ['prettier'],
  \}

  let g:ale_linters_explicit = 1


]])
