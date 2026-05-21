require('config.options')
require('config.keymaps')
require('config.plugins')

-- For enabling syntax highlighting in javascript
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'javascript' },
  callback = function() vim.treesitter.start() end,
})
