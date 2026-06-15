return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	lazy = false,
	build = ":TSUpdate",

	config = function()
		-- Change this line: add ".configs"
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = {
				"javascript",
				"typescript",
				"tsx",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"c",
				"rust",
				"go",
				"gomod",
				"gowork",
				"gosum",
				"yaml",
			},
			highlight = {
				enable = true,
				-- Setting this to false is vital to stop 'typescriptBlock' from showing up
				additional_vim_regex_highlighting = false,
			},
			indent = { enable = true },
		})
	end,
}
