return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	opts = {
		options = {
			mode = "buffers",
			separator_style = "thin",
			-- This section handles the offset for the file tree
			offsets = {
				{
					filetype = "NvimTree", -- Change to "neo-tree" if you use that
					text = "File Explorer", -- Optional title above the tree
					text_align = "left",
					separator = true,
				},
			},
		},
	},
}
