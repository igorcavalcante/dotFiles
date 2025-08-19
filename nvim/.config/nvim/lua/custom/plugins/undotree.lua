return {
  'mbbill/undotree',
  opt = {},
  config = function()
    vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
    local target_path = vim.fn.expand '~/.local/share/nvim/undodir'
    vim.o.undodir = target_path
    vim.o.undofile = true
  end,
}
