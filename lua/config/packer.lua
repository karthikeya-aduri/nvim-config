vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    --Plugin Manager
    use 'wbthomason/packer.nvim'
    --Telescope
    use 'nvim-lua/plenary.nvim'
    use {'nvim-telescope/telescope.nvim', tag = '0.1.5'}
    --Treesitter
    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    --Colorscheme
    use 'EdenEast/nightfox.nvim'
    --LSP
    use 'neovim/nvim-lspconfig'
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    --Autocompletion
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    --Snippets
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    --Devicons
    use 'nvim-tree/nvim-web-devicons'
    --LuaLine
    use 'nvim-lualine/lualine.nvim'
end)
