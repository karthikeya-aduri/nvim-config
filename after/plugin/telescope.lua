local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})

require('telescope').setup{
    defaults = {
        mappings = {
            n = {
                ["<C-p>"] = require('telescope.actions.layout').toggle_preview
            }
        },
        preview = {
            hide_on_startup = true
        }
    }
}
