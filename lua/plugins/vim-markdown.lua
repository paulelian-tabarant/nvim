-- vim-markdown plugin configuration

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
