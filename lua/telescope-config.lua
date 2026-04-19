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
