return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && yarn install",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
    vim.keymap.set('n', '<leader>np', ":MarkdownPreviewToggle<CR>", { noremap = true, silent = false, desc = '[N]otes [P]review' })
  end,
  ft = { "markdown" },
}
