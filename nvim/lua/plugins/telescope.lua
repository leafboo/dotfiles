return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function() -- config runs when the plugin loads
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
  end

  -- NOTE: fuzzy finding is a searching method that finds strings that match patterns approximately. It doesn't search for the 
  -- exact strings. For example, when we searched for "ple", the search results could be: "apple", "pale", "palace", "pipeline"

  -- ==================
  --    File Pickers
  -- ==================
  -- find_files - Lists files in your current working directory, respects .gitignore
  -- git_files - Fuzzy search through the output of git ls-files command, respects .gitignore
  -- grep_string - Searches for the string under your cursor or selection in your current working directory
  -- live_grep - Search for a string in your current working directory and get results live as you type, respects .gitignore. (Requires ripgrep)
  --
  -- ==================
  --    Vim Pickers
  -- ==================
  -- buffers - Lists open buffers in current neovim instance
  -- help_tags - Lists available help tags and opens a new window with the relevant help info on <cr> (idk what exactly is a help tag)
}
