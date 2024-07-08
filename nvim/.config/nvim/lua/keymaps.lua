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







--  Harpoon
-- local harpoon = require("harpoon")
-- 
-- -- REQUIRED
-- harpoon:setup()
-- -- REQUIRED
-- 
-- vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
-- vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
-- 
-- vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
-- vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end)
-- vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
-- vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)
-- 
-- -- Toggle previous & next buffers stored within Harpoon list
-- vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
-- vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)
-- 
-- -- Using telescope for Harpoon
-- local conf = require("telescope.config").values
-- local function toggle_telescope(harpoon_files)
--     local file_paths = {}
--     for _, item in ipairs(harpoon_files.items) do
--         table.insert(file_paths, item.value)
--     end
-- 
--     require("telescope.pickers").new({}, {
--         prompt_title = "Harpoon",
--         finder = require("telescope.finders").new_table({
--             results = file_paths,
--         }),
--         previewer = conf.file_previewer({}),
--         sorter = conf.generic_sorter({}),
--     }):find()
-- end
-- 
-- vim.keymap.set("n", "<C-e>", function() toggle_telescope(harpoon:list()) end, { desc = "Open harpoon window" })
