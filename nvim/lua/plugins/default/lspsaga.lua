return {
  'nvimdev/lspsaga.nvim',
  event = 'LspAttach',
  config = function()
    require('lspsaga').setup {
      symbols_in_winbar = { enable = true, separotor = '>' },
      outline = { close_after_jump = true, keys = { jump = '<CR>' } },
      ui = { code_action = ' ' },
    }
    -- 大纲
    vim.keymap.set('n', '<leader>a', '<cmd>Lspsaga outline<CR>')
    -- 跳转到声明
    vim.keymap.set('n', 'gd', '<cmd>Lspsaga peek_definition<CR>')
    vim.keymap.set('n', 'gD', '<cmd>Lspsaga peek_type_definition<CR>')
    vim.keymap.set('n', 'gh', '<cmd>Lspsaga goto_definition<CR>')
    vim.keymap.set('n', 'gH', '<cmd>Lspsaga goto_type_definition<CR>')
    vim.keymap.set('n', 'gr', '<cmd>Lspsaga finder<CR>')
    -- 跳转到引用位置
    vim.keymap.set('n', 'go', '<cmd>lua vim.diagnostic.open_float()<CR>')
    vim.keymap.set('n', 'gp', '<cmd>lua vim.diagnostic.open_prev()<CR>')
    vim.keymap.set('n', 'gn', '<cmd>lua vim.diagnostic.open_next()<CR>')
    vim.keymap.set('n', '<leader>cd', '<cmd>Lspsaga show_line_diagnostics<CR>')
    vim.keymap.set('v', '<leader>cd', '<cmd>Lspsaga show_line_diagnostics<CR>')
    vim.keymap.set('n', '<leader>ca', '<cmd>Lspsaga code_action<CR>')
    vim.keymap.set('v', '<leader>ca', '<cmd>Lspsaga code_action<CR>')
  end,
  dependencies = {
    'nvim-treesitter/nvim-treesitter', -- optional
    'nvim-tree/nvim-web-devicons', -- optional
  },
}
