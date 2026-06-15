return {
	"echasnovski/mini.animate",
	version = "*",
	config = function()
		require("mini.animate").setup({
			-- We only want cursor animations, so we can disable the others if they feel too intrusive
			cursor = {
				enable = true,
				-- Controlls how fast/smooth the cursor flies
				timing = require("mini.animate").gen_timing.linear({ duration = 150, unit = "total" }),
			},
			scroll = { enable = false },
			resize = { enable = false },
			open = { enable = false },
			close = { enable = false },
		})
	end,
}
