-- General
vim.keymap.set('n', '<S-j>', '<C-d>', { silent = true })
vim.keymap.set('n', '<S-k>', '<C-u>', { silent = true })
vim.keymap.set('n', '<S-h>', '^', { silent = true })
vim.keymap.set('n', '<S-l>', '$', { silent = true })

-- Telescope
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<CR>', { silent = true })
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', { silent = true })
vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<CR>', { silent = true })
vim.keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', { silent = true })

-- Nerd Tree
vim.keymap.set('n', '<leader>nt', '<cmd>NERDTreeToggle<CR>', { silent = true })
