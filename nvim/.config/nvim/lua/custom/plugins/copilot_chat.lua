return {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      { 'github/copilot.vim' }, -- ou use 'zbirenbaum/copilot.lua' se preferir
      { 'nvim-lua/plenary.nvim' },
    },
    build = 'make tiktoken',
    opts = {
      mappings = {
        complete = {
          insert = '<C-Tab>',
        },
        show_diff = {
          full_diff = true,
        },
      },
    },
    config = function(_, opts)
      require('CopilotChat').setup(opts)

      vim.keymap.set({ 'v', 'n' }, '<leader>co', ':CopilotChat<CR>', { desc = 'GitHub [C]opilot [C]hat' })
      vim.keymap.set({ 'v', 'n' }, '<leader>ce', ':CopilotChatExplain<CR>', { desc = 'GitHub [C]opilot [E]xplain' })
      vim.keymap.set({ 'v', 'n' }, '<leader>cf', ':CopilotChatFix<CR>', { desc = 'GitHub [C]opilot [F]ix' })
      vim.keymap.set({ 'v', 'n' }, '<leader>ct', ':CopilotChatToggle<CR>', { desc = 'GitHub [C]opilot [T]oogle' })
    end,
  },
}
