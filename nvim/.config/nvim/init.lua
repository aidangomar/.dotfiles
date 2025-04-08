local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
	"git",
	"clone",
	"--filter=blob:none",
	"https://github.com/folke/lazy.nvim.git",
	"--branch=stable", -- latest stable release
	lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

vim.wo.wrap = false
vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.updatetime = 300
vim.opt.encoding = "utf-8"
vim.g.mapleader = " "
vim.opt.guicursor = ""

vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true
-- vim.g.pyindent_open_paren = 0

vim.api.nvim_create_autocmd('BufEnter', {
    pattern = {'*.md'},
    group = group,
    command = 'setlocal wrap'
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "typescript",
    callback = function()
	vim.opt_local.shiftwidth = 2
	vim.opt_local.tabstop = 2
    end
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "proto",
    callback = function()
	vim.opt_local.shiftwidth = 2
	vim.opt_local.tabstop = 2
    end
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "javascript",
    callback = function()
	vim.opt_local.shiftwidth = 2
	vim.opt_local.tabstop = 2
    end
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "python",
    callback = function()
	vim.opt_local.shiftwidth = 2
	vim.opt_local.tabstop = 2
    end
})

vim.g.vimwiki_list = {{
	path = '~/wiki',
	syntax = 'markdown',
	ext = '.md'
}}

vim.g.vimwiki_auto_header = 1


require("keymaps")
require("lazy").setup("plugins")
vim.cmd("colorscheme rose-pine")

-- Set background to NONE (transparent)
vim.cmd("highlight Normal ctermbg=NONE guibg=NONE")
vim.cmd("highlight NormalNC ctermbg=NONE guibg=NONE")  -- optional, for inactive splits
vim.cmd("highlight NonText ctermbg=NONE guibg=NONE")
vim.cmd("highlight EndOfBuffer ctermbg=NONE guibg=NONE")  -- for cleaner bottom lines


-- Harpoon
local harpoon = require("harpoon")
harpoon:setup()

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<leader>e", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end)
vim.keymap.set("n", "<leader>5", function() harpoon:list():select(5) end)
vim.keymap.set("n", "<leader>6", function() harpoon:list():select(6) end)
vim.keymap.set("n", "<leader>7", function() harpoon:list():select(7) end)
vim.keymap.set("n", "<leader>8", function() harpoon:list():select(8) end)
vim.keymap.set("n", "<leader>9", function() harpoon:list():select(9) end)
vim.keymap.set("n", "<leader>h", function() harpoon:list():prev({ui_nav_wrap = true}) end)
vim.keymap.set("n", "<leader>l", function() harpoon:list():next({ui_nav_wrap = true}) end)

vim.keymap.set("n", "<leader>wc", ":Calendar<CR>", { noremap = true, silent = true })

