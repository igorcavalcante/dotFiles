return {
  'rest-nvim/rest.nvim',
  config = function()
    local telescope = require 'telescope'
    telescope.load_extension 'rest'

    vim.keymap.set('n', '<leader>rr', ":Rest run<CR>", { desc = '[R]est [R]un' })
    vim.keymap.set('n', '<leader>rl', ":Rest logs<CR>", { desc = '[R]est [L]ogs' })
    vim.keymap.set('n', '<leader>res', telescope.extensions.rest.select_env, { desc = '[R]est [E]nv [S]how' })
  end,
}
