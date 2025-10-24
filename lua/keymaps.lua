vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set('n', '<C-i>', function()
  -- Open terminal in a split
  vim.cmd('split | terminal')

  -- Wait briefly to ensure terminal is ready
  vim.defer_fn(function()
    local chan_id = vim.b.terminal_job_id
    if chan_id then
      -- Clear screen (Ctrl+L) and run command
      vim.fn.chansend(chan_id, 'ollama run llama3.2:3b\n')
      -- Enter insert mode
      vim.cmd('startinsert')
      vim.fn.chansend(chan_id, '\x0c')  -- Ctrl+L
    end
  end, 100)
end, { desc = 'Chat with ollama instance' })


