local status, treesitter_configs = pcall(require, 'nvim-treesitter.configs')
if (not status) then
    print('nvim-treesitter is not installed')
    return
end

treesitter_configs.setup {
    indent = {enable = true},
    highlight = {enable = true},
    rainbow = {enable = true},
    autotag = {enable = true},
    autopairs = {enable = true}
}

-- support astro
vim.filetype.add({extension = {astro = "astro"}})
