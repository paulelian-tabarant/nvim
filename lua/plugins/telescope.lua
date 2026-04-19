-- Telescope plugin configuration

require('telescope').setup{
  defaults = {
    file_ignore_patterns = { "node_modules", ".git/" },
  },
  extensions = {
    file_browser = {
      theme = "ivy",
      hijack_netrw = true,
      grouped = true,
      hidden = false,
    }
  }
}
require('telescope').load_extension('file_browser')

-- Auto-open file browser when nvim starts without arguments
vim.api.nvim_create_autocmd('VimEnter', {
  callback = function()
    if vim.fn.argc() == 0 then
      vim.cmd('Telescope file_browser')
    end
  end,
  desc = 'Auto-open Telescope file browser on startup'
})
