return {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
    config = function()
      -- Commands
      vim.cmd([[command! TmuxNavigateLeft TmuxNavigateLeft]])
      vim.cmd([[command! TmuxNavigateDown TmuxNavigateDown]])
      vim.cmd([[command! TmuxNavigateUp TmuxNavigateUp]])
      vim.cmd([[command! TmuxNavigateRight TmuxNavigateRight]])
      --
      -- Keymaps
      vim.keymap.set("n", "<C-h>", "<C-U>TmuxNavigateLeft<CR>")
      vim.keymap.set("n", "<C-j>", "<C-U>TmuxNavigateDown<CR>")
      vim.keymap.set("n", "<C-k>", "<C-U>TmuxNavigateUp<CR>")
      vim.keymap.set("n", "<C-l>", "<C-U>TmuxNavigateRight<CR>")
    end,
  }
}
