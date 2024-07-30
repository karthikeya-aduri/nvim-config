require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed={ "lua_ls", "cssls", "emmet_language_server","pyright", "clangd", "cmake", "tsserver" }
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

local lspconfig = require'lspconfig'
lspconfig.lua_ls.setup{
    capabilities=capabilities,
    settings = {
        Lua = {
            diagnostics={
                globals={ "vim", "dark", "love" },
            },
        }
    }
}

lspconfig.cssls.setup{
    capabilities = capabilities,
}

lspconfig.emmet_language_server.setup{
    filetypes = {'html'},
    capabilities = capabilities,
}

lspconfig.pyright.setup{
    capabilities = capabilities,
}

lspconfig.clangd.setup{
    capabilities=capabilities,
}

lspconfig.cmake.setup{
    capabilities=capabilities,
}

lspconfig.tsserver.setup{
    capabilities=capabilities,
}

local kmap = vim.keymap.set

kmap("n", "K", vim.lsp.buf.hover,{})
kmap("n", "<leader>gd", vim.lsp.buf.definition,{})
kmap("n", "<leader>dj", vim.diagnostic.goto_next,{})
kmap("n", "<leader>dk", vim.diagnostic.goto_prev,{})
kmap({"n","v"}, "<leader>ca", vim.lsp.buf.code_action,{})
kmap("n", "<leader>dl", "<cmd>Telescope diagnostics<cr>",{})

vim.opt.completeopt = {"menu","menuone","noselect"}
local cmp = require'cmp'

cmp.setup({
    snippet = {
    expand = function(args)
        require('luasnip').lsp_expand(args.body)
        end,
    },
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        }, {
        { name = 'buffer' },
    })
})

local ls = require "luasnip"
ls.config.set_config {
    history = false,
    updateevents = "TextChanged, TextChangedI",
}

for _, ft_path in ipairs(vim.api.nvim_get_runtime_file('lua/snippets/*.lua', true)) do
    loadfile(ft_path)()
end

vim.keymap.set({"i"}, "<C-k>", function()
    if ls.expand_or_jumpable() then
        ls.expand_or_jump()
    end
end, {silent = true})

vim.keymap.set({"i", "s"}, "<C-J>", function()
    if ls.jumpable(-1) then
        ls.jump(-1)
    end
end, {silent = true})
