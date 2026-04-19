-- Markdown writing workflow configuration

-- Load plugin configs
require('plugins.vim-markdown')
require('plugins.goyo')

-- Autocmds for markdown and text files
vim.api.nvim_create_autocmd('FileType', {
  group = vim.api.nvim_create_augroup('MarkdownSettings', { clear = true }),
  pattern = { 'markdown', 'txt' },
  callback = function()
    -- Editor settings for prose writing
    vim.opt_local.cursorline = true
    vim.opt_local.spell = true
    vim.opt_local.spelllang = 'fr'
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true
  end,
  desc = 'Markdown and text file settings'
})
