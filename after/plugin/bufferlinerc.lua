local status, bufferline = pcall(require, 'bufferline')
if (not status) then
    print('bufferline is not installed')
    return
end

vim.opt.termguicolors = true
bufferline.setup {
    options = {
        mode = "tabs",
        diagnostics = 'nvim_lsp',
        separator_style = 'slant',
        show_buffer_close_icons = false,
        show_close_icon = false,
        color_icons = true
    }
}
