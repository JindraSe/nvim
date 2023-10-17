vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.cmd.colorscheme('nightfox')
vim.wo.number = true

vim.cmd([[
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
]])

vim.opt_local.wrap = false
