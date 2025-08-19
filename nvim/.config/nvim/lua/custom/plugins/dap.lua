return {
  'mfussenegger/nvim-dap',
  config = function()
    local dap = require 'dap'
    dap.set_log_level 'TRACE'

    vim.api.nvim_set_hl(0, 'DapBreakpoint', { ctermbg = 0, fg = '#993939', bg = '#31353f' })
    vim.api.nvim_set_hl(0, 'DapLogPoint', { ctermbg = 0, fg = '#61afef', bg = '#31353f' })
    vim.api.nvim_set_hl(0, 'DapStopped', { ctermbg = 0, fg = '#98c379', bg = '#31353f' })

    vim.fn.sign_define('DapBreakpoint', {
      text = '',
      texthl = 'DapBreakpoint',
      linehl = 'DapBreakpoint',
      numhl = 'DapBreakpoint',
    })
    vim.fn.sign_define('DapBreakpointCondition', { text = 'ﳁ', texthl = 'DapBreakpoint', linehl = 'DapBreakpoint', numhl = 'DapBreakpoint' })
    vim.fn.sign_define('DapBreakpointRejected', { text = '', texthl = 'DapBreakpoint', linehl = 'DapBreakpoint', numhl = 'DapBreakpoint' })
    vim.fn.sign_define('DapLogPoint', { text = '', texthl = 'DapLogPoint', linehl = 'DapLogPoint', numhl = 'DapLogPoint' })
    vim.fn.sign_define('DapStopped', { text = '', texthl = 'DapStopped', linehl = 'DapStopped', numhl = 'DapStopped' })

    vim.api.nvim_set_keymap('n', '<leader>dc', '<Cmd>DapContinue<CR>', { noremap = true, desc = '[D]ebug [C]ontinue' })
    vim.api.nvim_set_keymap('n', '<leader>db', '<Cmd>DapToggleBreakpoint<CR>', { noremap = true, desc = '[D]ebug [B]reakpoint' })
    vim.api.nvim_set_keymap('n', '<leader>do', '<Cmd>DapStepOver<CR>', { noremap = true, desc = '[D]ebug [O]ver' })
    vim.api.nvim_set_keymap('n', '<leader>du', '<Cmd>DapStepOut<CR>', { noremap = true, desc = '[D]ebug [U]p' })
    vim.api.nvim_set_keymap('n', '<leader>di', '<Cmd>DapStepInto<CR>', { noremap = true, desc = '[D]ebug [I]nto' })
    vim.api.nvim_set_keymap('n', '<leader>dt', '<Cmd>DapTerminate<CR>', { noremap = true, desc = '[D]ebug [T]erminate' })
    vim.api.nvim_set_keymap('n', '<leader>dvt', '<Cmd>DapVirtualTextToggle<CR>', { noremap = true, desc = '[D]ebug [V]irtual Text [T]oggle' })
    vim.api.nvim_set_keymap('n', '<leader>dvt', '<Cmd>DapVirtualTextToggle<CR>', { noremap = true, desc = '[D]ebug [V]irtual Text [T]oggle' })
    vim.keymap.set('n', '<leader>dk', function()
      local condition = vim.fn.input 'Condição do breakpoint: '
      if condition ~= '' then
        require('dap').set_breakpoint(condition)
      else
        require('dap').toggle_breakpoint()
      end
    end, { desc = '[D]ebug [K]onditional [B]reakpoint' })
  end,
}
