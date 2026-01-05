return {
  'rcarriga/nvim-dap-ui',
  dependencies = {
    'mfussenegger/nvim-dap',
    'nvim-neotest/nvim-nio',
    'theHamsta/nvim-dap-virtual-text',
  },
  config = function()
    local dapui = require 'dapui'
    dapui.setup {
      layouts = {
        {
          elements = {
            'watches',
            'breakpoints',
            'scopes',
          },
          size = 40,
          position = 'left',
        },
      },
    }

    require('nvim-dap-virtual-text').setup {
      enabled = false,
    }

    vim.api.nvim_set_keymap('n', '<leader>dtg', ':lua require"dapui".toggle()<CR>', { noremap = true, silent = true, desc = '[D]ebug [T]oggle [G]UI' })
    vim.api.nvim_set_keymap('n', '<leader>de', ':lua require"dapui".eval()<CR>', { noremap = true, silent = true, desc = '[D]ebug [E]valuate' })

    function ShowDapElement()
      dapui.float_element(nil, {
        width = 150,
        height = 20,
        center = true,
      })
    end

    vim.api.nvim_set_keymap('n', '<leader>dh', '<cmd>lua ShowDapElement()<CR>', { noremap = true, silent = true })

    vim.api.nvim_create_user_command('ToggleREPL', function()
      require('dap').repl.toggle()
      vim.cmd 'resize 30'
      vim.cmd 'set cmdheight=1'
    end, {})

    -- Mapear a função ao comando
    vim.api.nvim_set_keymap('n', '<leader>dr', ':ToggleREPL<CR>', { noremap = true, silent = true })

    local dap = require 'dap'
    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end
  end,
}
