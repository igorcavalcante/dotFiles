return {
  'ThePrimeagen/harpoon',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'
    harpoon.setup()
    local harpoon_ui = require 'harpoon.ui'
    require('telescope').load_extension 'harpoon'

    vim.keymap.set('n', '<leader>hm', function()
      toggle_telescope(harpoon:list())
    end, { desc = '[H]arpoon [M]enu' })

    vim.keymap.set('n', '<leader>hl', require('harpoon.ui').toggle_quick_menu, {
      desc = '[H]arpoon [L]ist',
    })

    vim.keymap.set('n', '<leader>hx', function()
      require('harpoon.mark').toggle_file()
    end, { desc = '[H]arpoon [X] toggle' })

    vim.keymap.set('n', '<leader>ha', function()
      require('harpoon.mark').add_file()
    end, { desc = '[H]arpoon [A]dd' })

    vim.keymap.set('n', ']h', harpoon_ui.nav_next, { desc = 'Harpoon: next file' })
    vim.keymap.set('n', '[h', harpoon_ui.nav_prev, { desc = 'Harpoon: prev file' })
  end,
}
