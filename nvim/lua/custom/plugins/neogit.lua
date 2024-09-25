return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim', -- required
    'sindrets/diffview.nvim', -- optional - Diff integration

    -- Only one of these is needed, not both.
    'nvim-telescope/telescope.nvim', -- optional
    'ibhagwan/fzf-lua', -- optional
  },

  config = function()
    local neogit = require('neogit')
    local diffview = require('diffview')
    neogit.setup({
      integrations = {
        diffview = true,
      },
    })
    vim.keymap.set('n', '<leader>gs', neogit.open, { noremap = true, silent = false, desc = '[G]it [S]tatus' })
    vim.keymap.set('n', '<leader>gd', ":DiffviewOpen<CR>", { noremap = true, silent = false, desc = '[G]it [D]iff' })
    vim.keymap.set('n', '<leader>gD', ":DiffviewOpen origin/master...HEAD<CR>", { noremap = true, silent = false, desc = '[G]it [D]iff with master' })
  end,
}
