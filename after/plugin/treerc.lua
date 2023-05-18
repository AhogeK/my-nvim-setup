local status, tree = pcall(require, "nvim-tree")
if not status then
    print("nvim-tree not installed")
    return
end

tree.setup {}

vim.api.nvim_set_keymap("n", "<A-1>", ":NvimTreeToggle<CR>",
                        {noremap = true, silent = true})
