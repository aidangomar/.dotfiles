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

vim.bo.shiftwidth = 4
vim.wo.wrap = false
vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.updatetime = 300
vim.opt.encoding = "utf-8"

vim.api.nvim_create_autocmd('BufEnter', {
  pattern = {'*.md'},
  group = group,
  command = 'setlocal wrap'
})

require("keymaps")
require("lazy").setup("plugins")
