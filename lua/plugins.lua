-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
local status, packer = pcall(require, 'packer')
if (not status) then
    print('packer not installed')

    return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- theme
    use 'ellisonleao/gruvbox.nvim'

    use 'nvim-tree/nvim-web-devicons'
    -- lualine theme
    use 'nvim-lualine/lualine.nvim'
    -- tabline
    use 'akinsho/bufferline.nvim'
    -- pretty showing diagnostics, references, telescope and quickfix and location lists to help you solve all the trouble
    use 'folke/trouble.nvim'

    -- lsp config
    use 'neovim/nvim-lspconfig'

    use 'onsails/lspkind.nvim'

    -- github copilot
    use 'github/copilot.vim'

    -- nvim dap
    use 'mfussenegger/nvim-dap'

    -- inject lsp diagnostics, code actions, formate etc
    use 'jose-elias-alvarez/null-ls.nvim'

    -- Portable package manager for neovim
    use {
        'williamboman/mason.nvim',
        -- mason lspconfig
        'williamboman/mason-lspconfig.nvim',
        -- mason dap
        'jay-babu/mason-nvim-dap.nvim',
        -- mason null-ls
        'jay-babu/mason-null-ls.nvim',
        run = ':MasonUpdate' -- :MasonUpdate updates registry contents
    }

    use 'nvim-lua/plenary.nvim'
    -- telescope highly extendable fuzzy finder over lists
    use 'nvim-telescope/telescope.nvim'

    use 'nvim-telescope/telescope-file-browser.nvim'

    -- cmp acompletion engine plugin for neovim
    use {
        'hrsh7th/nvim-cmp', 'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path', 'hrsh7th/cmp-cmdline', -- vsnip
        'hrsh7th/cmp-vsnip', 'hrsh7th/vim-vsnip'
    }

    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    -- auto indent
    use 'nmac427/guess-indent.nvim'
end)
