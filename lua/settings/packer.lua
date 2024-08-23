vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Plugin Manager
    use 'wbthomason/packer.nvim'

    -- Telescope (fuzzy finder)
    use 'nvim-lua/plenary.nvim'
    use {'nvim-telescope/telescope.nvim', tag = '0.1.5'}

    -- Treesitter (Parsing system)
    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    -- Color Scheme
    use 'EdenEast/nightfox.nvim'

    -- LSP (Language Server Protocol)
    use 'neovim/nvim-lspconfig'

    -- Mason (LSP installer and manager)
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'

    -- Autocompletion
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'

    -- Formatter
    use 'stevearc/conform.nvim'

    -- Snippets
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    -- Status Line
    use 'nvim-lualine/lualine.nvim'

    -- Dev Icons
    use 'nvim-tree/nvim-web-devicons'
end)
