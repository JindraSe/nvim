vim.api.nvim_set_keymap('i', 'jj', '<ESC>', { noremap = true })
vim.api.nvim_set_keymap('t', 'jj', '<C-\\><C-n>', { noremap = true })

vim.g.mapleader = ";"

vim.api.nvim_set_keymap('n', '<Leader>n', ':NvimTreeToggle<Enter>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>t', ':1 ToggleTerm size=20<Enter><C-\\><C-n>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>p', ':2 ToggleTerm size=20<Enter><C-\\><C-n>', { noremap = true })

vim.api.nvim_set_keymap('n', '<Leader>k', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>l', '<C-w>l', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>j', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<Leader>h', '<C-w>h', { noremap = true })
