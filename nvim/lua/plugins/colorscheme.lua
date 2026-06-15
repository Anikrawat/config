-- return {
-- 	"catppuccin/nvim",
-- 	name = "catppuccin",
-- 	priority = 1000,
-- 	config = function()
-- 		local catppuccin = require("catppuccin")
--
-- 		catppuccin.setup({
-- 			transparent_background = true,
-- 			term_colors = false,
-- 			styles = {
-- 				comments = { "italic" },
-- 				functions = { "italic" },
-- 				keywords = { "italic" },
-- 				-- FIX: Use empty tables instead of "NONE"
-- 				strings = {},
-- 				variables = {},
-- 			},
-- 			integrations = {
-- 				treesitter = true,
-- 				native_lsp = {
-- 					enabled = true,
-- 					virtual_text = {
-- 						errors = { "italic" },
-- 						hints = { "italic" },
-- 						warnings = { "italic" },
-- 						information = { "italic" },
-- 					},
-- 					underlines = {
-- 						errors = { "underline" },
-- 						hints = { "underline" },
-- 						warnings = { "underline" },
-- 						information = { "underline" },
-- 					},
-- 				},
-- 				gitsigns = true,
-- 				telescope = { enabled = true },
-- 				nvimtree = true,
-- 				which_key = true,
-- 				indent_blankline = { enabled = true },
-- 				dashboard = true,
-- 				bufferline = true,
-- 			},
-- 		})
--
-- 		vim.cmd.colorscheme("catppuccin")
-- 		vim.api.nvim_set_hl(0, "MatchParen", { fg = "#fab387", bold = true, underline = true })
-- 	end,
-- }

return {
	"rose-pine/neovim",
	name = "rose-pine",
	priority = 1000,
	config = function()
		local rose_pine = require("rose-pine")

		rose_pine.setup({
			variant = "main", -- Options: "main", "moon", or "dawn"
			dark_variant = "main",

			styles = {
				bold = true,
				italic = true,
				transparency = true, -- Replaces transparent_background = true
			},

			-- Customizing highlights to match your exact Catppuccin italic rules
			highlight_groups = {
				Comment = { italic = true },
				Function = { italic = true },
				Keywords = { italic = true },
				-- Strings and variables are left default/non-italic automatically
			},
		})

		vim.cmd("colorscheme rose-pine")

		-- Keeps your custom matching parenthesis styling (using Rose Pine's gold/rose accent hex)
		vim.api.nvim_set_hl(0, "MatchParen", { fg = "#f6c177", bold = true, underline = true })
	end,
}
