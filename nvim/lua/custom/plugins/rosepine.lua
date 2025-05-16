return {
  'rose-pine/neovim',
  config = function()
    require('rose-pine').setup {
      variant = 'main',
      extend_background_behind_borders = true,
      groups = {
        background = '#282828',
      },
      enable = {
        terminal = true,
        legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
        migrations = true, -- Handle deprecated options automatically
      },

      styles = {
        bold = true,
        italic = true,
        transparency = true,
      },
    }
    vim.cmd 'colorscheme rose-pine'
    vim.cmd 'highlight Visual guifg=#000000 guibg=#f6c177'
    vim.cmd 'highlight CursorLine guibg=#3f3a28'
  end,
}
