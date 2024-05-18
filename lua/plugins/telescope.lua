return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.6',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('telescope').setup({})
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find files' })
    vim.keymap.set('n', '<leader>fg', builtin.git_files, { desc = 'Find on Git files' })
    vim.keymap.set('n', '<leader>pws', function()
      local word = vim.fn.expand("<cword>")
      builtin.grep_string({ search = word })
    end, { desc = 'Find in the project a word' })

    vim.keymap.set('n', '<leader>pWs', function()
      local word = vim.fn.expand("<cWORD>")
      builtin.grep_string({ search = word })
    end, { desc = "Find current word" })

    vim.keymap.set('n', '<leader>ps', function()
      builtin.grep_string({ search = vim.fn.input("Grep > ") })
    end, { desc = 'Find a random word' })

    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Find in help database' })
    vim.keymap.set('n', '<leader>fl', builtin.live_grep, { desc = 'Find word live' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Find buffers' })
  end
}
