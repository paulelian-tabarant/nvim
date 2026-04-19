-- Goyo plugin configuration

-- Keybinding to toggle Goyo
vim.keymap.set('n', '<C-g>', ':Goyo<CR>', { silent = true, desc = 'Toggle Goyo' })

-- Auto-enable Goyo for markdown and text files
vim.api.nvim_create_autocmd('FileType', {
  group = vim.api.nvim_create_augroup('GoyoAutoEnable', { clear = true }),
  pattern = { 'markdown', 'txt' },
  callback = function()
    vim.cmd.Goyo('100')
  end,
  desc = 'Auto-enable Goyo for markdown/text files'
})
