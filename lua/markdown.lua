-- Markdown configuration

-- Plugin settings
local markdown_settings = {
  vim_markdown_conceal = 2,
  vim_markdown_conceal_code_blocks = 0,
  vim_markdown_math = 1,
  vim_markdown_toml_frontmatter = 1,
  vim_markdown_frontmatter = 1,
  vim_markdown_strikethrough = 1,
  vim_markdown_autowrite = 1,
  vim_markdown_edit_url_in = 'tab',
  vim_markdown_follow_anchor = 1,
}

for key, value in pairs(markdown_settings) do
  vim.g[key] = value
end

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

    -- Auto-enable distraction-free mode
    vim.cmd.Goyo('100')
  end,
  desc = 'Markdown and text file settings'
})
