vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 1
vim.opt.shiftwidth = 2

vim.opt.wrap = false

vim.g.background = "light"

vim.opt.swapfile = false

vim.o.relativenumber = true
vim.o.mouse = 'a'

vim.o.showmode = false

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.updatetime = 250

vim.o.splitright = true
vim.o.splitbelow = true

vim.o.inccommand = 'split'

vim.o.cursorline = true

vim.o.mousescroll = 'ver:1,hor:2'

-- Linux Clipboard Settings
vim.opt.clipboard = 'unnamedplus'

-- WSL Clibboard Settings 
-- vim.g.clipboard = {
--   name = 'WslClipboard',
--   copy = {
--       ['+'] = 'clip.exe',
--       ['*'] = 'clip.exe',
--   },
--   paste = {
--       ['+'] = 'powershell.exe -NoLogo -NoProfile -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
--       ['*'] = 'powershell.exe -NoLogo -NoProfile -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
--    },
--    cache_enabled = 0,
--  }

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})
vim.api.nvim_create_augroup("WrapMarkdown", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true
  end,
})
