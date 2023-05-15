local status, telescope = pcall(require, 'telescope')
if (not status) then
    print('telescope is not installed')
    return
end

telescope.setup {
    defaults = {
        hidden = true,
        file_ignore_patterns = {
            "^node_modules/", "^.git/", ".DS_Store", "^.idea/", "^.vscode/"
        },
        mappings = {i = {["<C-b>"] = "select_tab"}}
    },
    pickers = {find_files = {hidden = true}},
    extensions = {
        file_browser = {
            hidden = true,
            hijack_netrw = true,
            grouped = true,
            select_buffer = true
        }
    }
}

telescope.load_extension "file_browser"

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- open file_browser with the path of the current buffer
vim.api.nvim_set_keymap("n", "<space>fb",
                        ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
                        {noremap = true})
