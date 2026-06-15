-- function makeTransparent()
-- 	color = "rose-pine"
-- 	vim.cmd.colorscheme(color)
--
-- 	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- 	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- end

require("keymaps.keymaps")

require("options.options")
require("config.lazy")
vim.diagnostic.config({
	virtual_text = {
		prefix = "●", -- Could be '■', '▎', 'x'
		source = "if_many", -- Show the source (e.g., "eslint") if there's more than one
		spacing = 4,
	},
})
-- makeTransparent()
