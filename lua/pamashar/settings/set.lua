vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.cursorline = true
vim.opt.cursorcolumn = true

vim.opt.splitright = true
vim.opt.splitbelow = true -- splitting a window will put the new window below the current one
--vim.opt.ignorecase = true -- ignore case when searching
--vim.opt.hlsearch = false
--vim.opt.incsearch = true

-- Enable spell checking
--vim.opt.spelllang = {
--    "en",
--    "ru"
--}
--vim.opt.spell = true

vim.opt.swapfile = false

vim.opt.colorcolumn = "120"

vim.opt.signcolumn = "yes"

-- Enable hidden characters
vim.opt.listchars = {
    tab = "| ",
--    eol = "↵",
    trail = "•",
}
vim.opt.list = true

