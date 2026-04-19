-- Markdown configuration

-- Plugin settings
vim.g.vim_markdown_conceal = 2
vim.g.vim_markdown_conceal_code_blocks = 0
vim.g.vim_markdown_math = 1
vim.g.vim_markdown_toml_frontmatter = 1
vim.g.vim_markdown_frontmatter = 1
vim.g.vim_markdown_strikethrough = 1
vim.g.vim_markdown_autowrite = 1
vim.g.vim_markdown_edit_url_in = 'tab'
vim.g.vim_markdown_follow_anchor = 1

-- Autocmds for markdown and text files
local markdown_group = vim.api.nvim_create_augroup('MarkdownSettings', { clear = true })

vim.api.nvim_create_autocmd('FileType', {
  group = markdown_group,
  pattern = { 'markdown', 'txt' },
  callback = function()
    vim.opt_local.cursorline = true
    vim.opt_local.spell = true
    vim.opt_local.spelllang = 'fr'
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true
    vim.cmd('Goyo 100')
  end,
  desc = 'Markdown and text file settings'
})
