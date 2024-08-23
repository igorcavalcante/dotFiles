return {
  'Pocco81/auto-save.nvim',
  config = function()
    require('auto-save').setup {
      enabled = true,
    }
    vim.api.nvim_set_keymap('n', '<leader>a', ':ASToggle<CR>', {})
  end,
}
