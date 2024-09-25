return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local theme = require'lualine.themes.seoul256'
    -- theme.normal.c.bg = '#484848'
    --[[ theme.insert.c.bg = '#484848'
    theme.visual.c.bg = '#484848'
    theme.command.c.bg = '#484848' ]]

    require('lualine').setup {
      options = {
        theme = theme,
      },
      extensions = { 'nvim-tree' },
    }
  end,
}
