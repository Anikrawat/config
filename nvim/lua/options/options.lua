vim.opt.clipboard = "unnamedplus"
vim.opt.number = true
vim.opt.relativenumber = true

-- size of indentation
vim.opt.shiftwidth = 4
vim.opt.expandtab = true



-- Add borders to LSP hover and signature windows
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
  vim.lsp.handlers.hover, { border = "rounded" }
)

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
  vim.lsp.handlers.signature_help, { border = "rounded" }
)

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if require("lazy.status").has_updates() then
      require("lazy").update({ show = true })
    end
  end,
})
