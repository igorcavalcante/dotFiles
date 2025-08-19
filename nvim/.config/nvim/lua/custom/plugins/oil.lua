return {
  'stevearc/oil.nvim',
  config = function()
    require('oil').setup {}

    function OpenOilRoot()
      require('oil.actions').open_cwd.callback()
    end

    vim.keymap.set('n', '<leader>o', '<CMD>Oil<CR>', { noremap = true, silent = true, desc = '[O]pen directory' })
    vim.keymap.set('n', '<leader>O', OpenOilRoot, { noremap = true, silent = true, desc = '[O]pen root directory' })
  end,
}
