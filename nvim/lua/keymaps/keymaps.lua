vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
vim.keymap.set('n', '<esc>', ':nohlsearch<CR>')

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", '"_dp')

-- Buffers
vim.keymap.set("n", "H", ":bprevious<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "L", ":bnext<cr>", { desc = "Next Buffer" })
vim.keymap.set("n", "<leader>bd", function()
	local current_buf = vim.api.nvim_get_current_buf()
	local bufnrs = vim.fn.getbufinfo({ buflisted = 1 })

	if #bufnrs > 1 then
		-- Move to the previous buffer before deleting the current one
		vim.cmd("bp")
		-- Use pcall to ignore errors if the buffer is already gone or modified
		pcall(vim.cmd, "bd " .. current_buf)
	else
		-- This is the "last buffer" scenario
		vim.cmd("enew") -- Create a new empty buffer
		-- Wipe out the old one by ID to avoid the E516 error
		pcall(vim.cmd, "bd " .. current_buf)
	end
end, { desc = "Safely close buffer" })

--conform.nvim

vim.keymap.set("n", "<leader>w", function()
	require("conform").format({
		lsp_fallback = true,
		async = false,
		timeout_ms = 500,
	})
end, { desc = "Format and Save file" })
