return {
	"ellisonleao/dotenv.nvim",
	config = function()
		require("dotenv").setup({
			enable_on_load = true, -- Automatically activates when opening a .env file
			verbose = false, -- Suppresses annoying loading messages
		})
	end,
}
