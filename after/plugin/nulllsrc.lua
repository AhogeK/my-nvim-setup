local status, null_ls = pcall(require, 'null-ls')
if (not status) then
    print('null-ls is not installed')
    return
end

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local astro_source = {
    sources = {null_ls.builtins.formatting.prettierd},
    filetypes = {"astro"}
}

null_ls.setup {
    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({group = augroup, buffer = bufnr})
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.format({bufnr = bufnr})
                end
            })
        end
    end,
    sources = {
        null_ls.builtins.code_actions.refactoring,
        null_ls.builtins.formatting.lua_format,
        null_ls.builtins.diagnostics.luacheck
    }
}

null_ls.register(astro_source)
