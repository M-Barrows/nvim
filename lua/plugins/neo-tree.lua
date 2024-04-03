return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
   	vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal right<CR>", {})
	  vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})
  end,
  event_handlers={
    event="file_opened",
    handler= function(file_path)
      require("neo-tree").close_all()
    end
  }
}
