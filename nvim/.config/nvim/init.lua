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

-- still figuring out how to share clipboard across ssh
-- vim.api.nvim_set_keymap('v', '"+y', ':!xclip -f -sel clip<CR>', { noremap = true })
-- vim.api.nvim_set_keymap('n', '"+p', ':r!xclip -o -sel clip<CR>', { noremap = true })

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

require("keymaps")
require("lazy").setup("plugins")

-- vim.o.background = "dark" -- or "light" for light mode
vim.cmd("colorscheme gruvbox-material")
