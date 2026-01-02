return {
  'echasnovski/mini.nvim',
  version = '*',
  config = function()
    -- vim.keymap.set('n', '<leader>msc', function()
    --   MiniSessions.write 'default'
    -- end, { desc = '[M]ini [S]ession [C]reate' })
    --
    -- vim.keymap.set('n', '<leader>msd', function()
    --   MiniSessions.write 'default'
    -- end, { desc = '[M]ini [S]ession [D]elete' })

    -- Better Around/Inside textobjects
    --
    -- Examples:
    --  - va)  - [V]isually select [A]round [)]paren
    --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
    --  - ci'  - [C]hange [I]nside [']quote
    -- require('mini.ai').setup { n_lines = 500 }

    -- Add/delete/replace surroundings (brackets, quotes, etc.)
    --
    -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
    -- - sd'   - [S]urround [D]elete [']quotes
    -- - sr)'  - [S]urround [R]eplace [)] [']
    require('mini.surround').setup {
      mappings = {
        add = 'gza', -- Adicionar (era sa)
        delete = 'gzd', -- Deletar (era sd)
        find = 'gzf', -- Encontrar (era sf)
        find_left = 'gzF', -- Encontrar esquerda (era sF)
        highlight = 'gzh', -- Highlight (era sh)
        replace = 'gzr', -- Substituir (era sr)
        update_n_lines = 'gzn', -- Atualizar linhas (era sn)

        suffix_last = 'l', -- sufixo para "last"
        suffix_next = 'n', -- sufixo para "next"
      },
    }
    -- Simple and easy statusline.
    --  You could remove this setup call if you don't like it,
    --  and try some other statusline plugin
    -- local statusline = require 'mini.statusline'
    -- set use_icons to true if you have a Nerd Font

    require('mini.starter').setup()
  end,
}
