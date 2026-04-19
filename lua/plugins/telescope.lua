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

-- Keybindings
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { desc = 'Find files' })
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { desc = 'Live grep' })
vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { desc = 'Buffers' })
vim.keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { desc = 'Help tags' })
vim.keymap.set('n', '<leader>fe', '<cmd>Telescope file_browser<cr>', { desc = 'File browser' })

-- Auto-open file browser when nvim starts without arguments
vim.api.nvim_create_autocmd('VimEnter', {
  callback = function()
    if vim.fn.argc() == 0 then
      vim.cmd('Telescope file_browser')
    end
  end,
  desc = 'Auto-open Telescope file browser on startup'
})
