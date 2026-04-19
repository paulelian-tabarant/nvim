-- Web development configuration

-- File types for web development
local web_filetypes = {
  'javascript',
  'typescript',
  'javascriptreact',
  'typescriptreact',
  'json',
  'html',
  'css',
}

-- Autocmds for web development files
local webdev_group = vim.api.nvim_create_augroup('WebDevSettings', { clear = true })

-- Enable line numbers for web files
vim.api.nvim_create_autocmd('BufEnter', {
  group = webdev_group,
  pattern = { '*.js', '*.jsx', '*.ts', '*.tsx', '*.json', '*.html', '*.css' },
  callback = function()
    vim.opt_local.number = true
  end,
  desc = 'Enable line numbers for web development files'
})

-- Colorcolumn for code files
vim.api.nvim_create_autocmd('FileType', {
  group = webdev_group,
  pattern = web_filetypes,
  callback = function()
    -- 80-character guide (except for JSON and HTML)
    local ft = vim.bo.filetype
    if ft ~= 'json' and ft ~= 'html' then
      vim.opt_local.colorcolumn = '80'
    end
  end,
  desc = 'Web development colorcolumn settings'
})
