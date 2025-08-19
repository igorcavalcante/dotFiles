return {
  'folke/flash.nvim',
  config = function()
    require('flash').setup()
    require('flash').toggle(false)

    vim.keymap.set({ 'n', 'x', 'o' }, '\\', function()
      require('flash').jump()
    end)
    vim.keymap.set({ 'n', 'x', 'o' }, '<leader>ft', function()
      require('flash').toggle()
    end)
  end,
}
