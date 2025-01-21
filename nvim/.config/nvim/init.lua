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

require("keymaps")
require("lazy").setup("plugins")

-- vim.o.background = "dark" -- or "light" for light mode
vim.cmd("colorscheme kanagawa-dragon")

-- -- Harpoon
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


-- function Harpoon_files()
--   local yellow = '#DCDCAA'
--   local yellow_orange = '#D7BA7D'
--   local background_color = "#282829"
--   local grey = "#797C91"
--   local light_blue = "#9CDCFE"
--   vim.api.nvim_set_hl(0, "HarpoonInactive", { fg = grey, bg = background_color })
--   vim.api.nvim_set_hl(0, "HarpoonActive", { fg = light_blue, bg = background_color })
--   vim.api.nvim_set_hl(0, "HarpoonNumberActive", { fg = yellow, bg = background_color })
--   vim.api.nvim_set_hl(0, "HarpoonNumberInactive", { fg = yellow_orange, bg = background_color })
--   vim.api.nvim_set_hl(0, "TabLineFill", { fg = "white", bg = background_color })
--   local contents = {}
--   local marks_length = harpoon:list():length()
--   local current_file_path = vim.fn.fnamemodify(vim.fn.expand("%:p"), ":.")
--   for index = 1, marks_length do
--     local harpoon_file_path = harpoon:list():get(index).value
--     local file_name = harpoon_file_path == "" and "(empty)" or vim.fn.fnamemodify(harpoon_file_path, ':t')
-- 
--     if current_file_path == harpoon_file_path then
--       contents[index] = string.format("%%#HarpoonNumberActive# %s. %%#HarpoonActive#%s ", index, file_name)
--     else
--       contents[index] = string.format("%%#HarpoonNumberInactive# %s. %%#HarpoonInactive#%s ", index, file_name)
--     end
--   end
-- 
--   return table.concat(contents)
-- end
-- 
-- vim.opt.showtabline = 2
-- vim.api.nvim_create_autocmd({ "BufEnter", "BufAdd", "User" }, {
--     callback = function(ev)
--         vim.o.tabline = Harpoon_files()
--     end
-- })
