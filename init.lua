require('base')
require('plugins')
require('maps')

-- set gruvbox theme
vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

-- set file tab spaces
vim.cmd [[
    augroup filetype_specific_settings
        autocmd!
        autocmd FileType python,lua setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
        autocmd FileType js,jsx,tsx,ts,css,scss,astro,md setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
    augroup END
]]
