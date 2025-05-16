return {
  'rcarriga/nvim-notify',
  config = function()
    local notify = require 'notify'
    vim.notify = notify

    -- Configurações adicionais, se necessário
    notify.setup {
      timeout = 3000, -- Tempo de exibição das notificações em milissegundos
      background_colour = '#000000', -- Cor de fundo
    }
  end,
}
