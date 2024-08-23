local kmap = vim.keymap.set

vim.g.mapleader = " "

-- NetRW keymaps
kmap("n", "<leader>nt", "<cmd>Ex<cr>")
kmap("n", "<leader>nl", "<cmd>Vex<cr>")
kmap("n", "<leader>nr", "<cmd>Vex!<cr>")

-- Save and Quit keymaps
kmap("n", "<leader>ww", "<cmd>w!<cr>")
kmap("n", "<leader>qq", "<cmd>q!<cr>")

-- Copy to clipboard
kmap("v", "<leader>y", '"+y')

-- Window movement keymaps
kmap("n", "<C-h>", "<cmd>wincmd h<cr>")
kmap("n", "<C-l>", "<cmd>wincmd l<cr>")
kmap("n", "<C-k>", "<cmd>wincmd k<cr>")
kmap("n", "<C-j>", "<cmd>wincmd j<cr>")

-- LSP keymaps
kmap("n", "K", vim.lsp.buf.hover, {})
kmap("n", "<leader>gd", vim.lsp.buf.definition, {})
kmap("n", "<leader>dj", vim.diagnostic.goto_next, {})
kmap("n", "<leader>dk", vim.diagnostic.goto_prev, {})
kmap({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
kmap("n", "<leader>dl", "<cmd>Telescope diagnostics<cr>", {})
