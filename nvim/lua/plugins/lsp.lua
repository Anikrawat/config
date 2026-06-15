return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function()
		-- 1. Setup Capabilities (for nvim-cmp)
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		-- 2. Define Global LSP behavior (Keymaps)
		vim.api.nvim_create_autocmd("LspAttach", {
			callback = function(args)
				local opts = { buffer = args.buf }
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
				vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
				vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
			end,
		})

		-- 3. Configure Servers
		-- Apply capabilities to all servers
		vim.lsp.config("*", {
			capabilities = capabilities,
		})

		-- Individual Server Settings
		vim.lsp.config("lua_ls", {
			settings = {
				Lua = {
					diagnostics = { globals = { "vim" } },
				},
			},
		})

		vim.lsp.config("gopls", {
			settings = {
				gopls = {
					analyses = {
						unusedparams = true,
					},
					staticcheck = true,
					gofumpt = true, -- Uses gofumpt formatting if you have it installed
				},
			},
		})

		-- 4. Enable Servers (Starts the servers)
		vim.lsp.enable({ "ts_ls", "lua_ls", "tailwindcss", "rust_analyzer", "gopls" })
	end,
}
