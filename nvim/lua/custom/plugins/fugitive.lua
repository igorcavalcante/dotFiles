return {
  'tpope/vim-fugitive',
  config = function()
    vim.keymap.set('n', '<leader>gs', vim.cmd.Git)
    vim.keymap.set('n', '<leader>gc', ':Git commit<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>gdp', ':diffput ', { noremap = true, silent = false })
    vim.keymap.set('n', '<leader>gdg', ':diffget ', { noremap = true, silent = false })
    vim.keymap.set('n', '<leader>gd', ':Gvdiffsplit<CR> ', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>gw', ':Gwrite<CR> ', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>gr', ':Gread<CR> ', { noremap = true, silent = true })
  end,
}
