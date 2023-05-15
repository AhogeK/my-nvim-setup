local mason_status, mason = pcall(require, 'mason')

if (not mason_status) then
    print('mason not installed')
    return
end

local mason_lspconfig_status, mason_lspconfig =
    pcall(require, 'mason-lspconfig')

if (not mason_lspconfig_status) then
    print('mason-lspconfig not installed')
    return
end

local mason_dap_status, mason_dap = pcall(require, 'mason-nvim-dap')
if (not mason_dap_status) then
    print('mason-nvim-dap not installed')
    return
end

local mason_nullls_status, mason_null_ls = pcall(require, 'mason-null-ls')
if (not mason_nullls_status) then
    print('mason-null-ls is not installed')
    return
end

mason.setup {}
mason_lspconfig.setup {}
mason_dap.setup {}
mason_null_ls.setup {automatic_setup = true}
