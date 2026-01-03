-- Remove Global Default Key mapping
vim.keymap.del('n', 'grn')
vim.keymap.del('n', 'gra')
vim.keymap.del('n', 'grr')
vim.keymap.del('n', 'gri')
vim.keymap.del('n', 'gO')
-- vim.keymap.del('n', 'gd')
-- vim.keymap.del('n', 'gD')
-- vim.keymap.del('n', 'gh')
-- vim.keymap.del('n', 'gH')
-- vim.keymap.del('n', 'gr')

-- Create keymapping
-- LspAttach: After an LSP Client performs "initialize" and attaches to a buffer.
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local keymap = vim.keymap
    local lsp = vim.lsp
    local bufopts = { noremap = true, silent = true }

    keymap.set('n', 'gr', lsp.buf.references, bufopts)
    keymap.set('n', 'gd', lsp.buf.definition, bufopts)
    keymap.set('n', '<space>rn', lsp.buf.rename, bufopts)
    -- keymap.set('n', 'gd', '<cmd>Lspsaga peek_definition<CR>', bufopts)
    -- keymap.set('n', 'gD', '<cmd>Lspsaga peek_type_definition<CR>', bufopts)
    -- keymap.set('n', 'gh', '<cmd>Lspsaga goto_definition<CR>', bufopts)
    -- keymap.set('n', 'gH', '<cmd>Lspsaga goto_type_definition<CR>', bufopts)
    -- keymap.set('n', 'gr', '<cmd>Lspsaga finder tyd<CR>', bufopts)
    keymap.set('n', 'K', lsp.buf.hover, bufopts)
    keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, bufopts)
  end,
})

vim.lsp.enable { 'ty' }
vim.lsp.enable { 'clangd' }
vim.lsp.enable { 'rust_analyzer' }
vim.lsp.enable { 'gopls' }
