return {
  {
    'neovim/nvim-lspconfig',
    config = function()
      vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(args)
          local buf = args.buf
          vim.api.nvim_buf_set_keymap(buf, 'n', '<C-M-l>', '<cmd>lua vim.lsp.buf.format()<CR>', { noremap = true })
        end,
      })
      local lspconfig = require 'lspconfig'
      lspconfig['tsserver'].setup {}
      lspconfig['lua_ls'].setup {}
      lspconfig['marksman'].setup {}
      -- lspconfig['ccls'].setup {
      --   init_options = {
      --     compilationDatabaseDirectory = 'build',
      --     index = {
      --       threads = 0,
      --     },
      --     clang = {
      --       excludeArgs = { '-frounding-math' },
      --     },
      --   },
      -- }
      lspconfig['clangd'].setup {}
      lspconfig['asm_lsp'].setup {}
      lspconfig['rust_analyzer'].setup {}
    end,
  },
}
