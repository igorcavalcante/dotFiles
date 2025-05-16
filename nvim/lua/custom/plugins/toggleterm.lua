--[[ return {
  'akinsho/toggleterm.nvim',
  config = function()
    vim.keymap.set('n', '<leader>tt', ':ToggleTerm<CR>', { noremap = true, silent = true, desc = '[T]oggle [T]erm' })
  end,
} ]]
--
-- return {
--   { 'akinsho/toggleterm.nvim', version = '*', config = true },
-- }
--
return {
  'akinsho/toggleterm.nvim',
  version = '*',
  opts = {
    direction = 'float',
    size = 60,
    shade_terminals = false,
    start_in_insert = true,
    vim.keymap.set('n', '<F11>', ':ToggleTerm<CR>', { noremap = true, silent = true, desc = '[T]oggle [T]erm' }),
    vim.keymap.set('t', '<F11>', [[<C-\><C-n>:ToggleTerm<CR>]], { noremap = true, silent = true, desc = '[T]oggle [T]erm' }),
  },
}
