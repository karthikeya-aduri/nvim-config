local kmap = vim.keymap.set

vim.g.mapleader = " "

-- NetRW remaps.
kmap("n", "<leader>nt", "<cmd>Ex<cr>")
kmap("n", "<leader>nl", "<cmd>Vex<cr>")
kmap("n", "<leader>nr", "<cmd>Vex!<cr>")

-- Save and Quit remaps.
kmap("n", "<leader>ww", "<cmd>w!<cr>")
kmap("n", "<leader>qq", "<cmd>q!<cr>")

-- Copy to clipboard.
kmap("v", "<leader>y", "\"+y")

-- Window movement remaps.
kmap("n", "<C-h>", "<cmd>wincmd h<cr>")
kmap("n", "<C-l>", "<cmd>wincmd l<cr>")
kmap("n", "<C-k>", "<cmd>wincmd k<cr>")
kmap("n", "<C-j>", "<cmd>wincmd j<cr>")
