return {
    "OXY2DEV/markview.nvim",
    lazy = false,

    -- Completion for `blink.cmp`
    -- dependencies = { "saghen/blink.cmp" },
	  vim.keymap.set("n", "<leader>mg", "<cmd> Markview<CR>", { desc = "Toggles `markview` previews globally." }),
	  vim.keymap.set("n", "<leader>ms", "<cmd> Markview splitToggle<CR>", { desc = "Toggles `splitview` for current buffer " })
};
