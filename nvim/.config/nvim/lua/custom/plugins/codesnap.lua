return {
  'mistricky/codesnap.nvim',
  build = 'make',
  config = function()
    require('codesnap').setup {
      has_breadcrumbs = true,
    }

    vim.api.nvim_set_keymap('n', '<F12>', ':CodeSnap<CR>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('v', '<F12>', ':CodeSnap<CR>', { noremap = true, silent = true })
  end,
}
