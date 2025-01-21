-- General
vim.keymap.set('n', '<S-h>', '^', { silent = true })
vim.keymap.set('n', '<S-l>', '$', { silent = true })

vim.keymap.set('n', 'j', 'v:count ? "j" : "gj"', {expr = true, noremap = true, silent = true })
vim.keymap.set('n', 'k', 'v:count ? "k" : "gk"', {expr = true, noremap = true, silent = true })

-- Telescope
vim.keymap.set('n', '<C-f>', '<cmd>Telescope find_files<CR>', { silent = true })
vim.keymap.set('n', '<C-g>', '<cmd>Telescope live_grep<CR>', { silent = true })
vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<CR>', { silent = true })
vim.keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', { silent = true })

-- Nerd Tree
vim.keymap.set('n', '<leader>nt', '<cmd>NERDTreeToggle<CR>', { silent = true })

-- Oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

