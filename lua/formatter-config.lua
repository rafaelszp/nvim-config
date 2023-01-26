local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.completion.spell,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.xmllint,
        null_ls.builtins.formatting.astyle
    },
})

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local vopts = { noremap = true, silent = true }


map('n','<leader>f',':lua vim.lsp.buf.format{async=true}<CR>',opts)
map('v','<leader>f',':lua vim.lsp.buf.format{async=true}<CR>',vopts)
