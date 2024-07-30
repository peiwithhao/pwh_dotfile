return {
  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    config = function(_, opts)
      local wk = require 'which-key'
      -- wk.setup(opts)
      -- local keymaps = {
      --   mode = { 'n', 'v' },
      --   ['m'] = { name = '+surround' },
      --   [']'] = { name = '+next' },
      --   ['['] = { name = '+prev' },
      --   ['<leader><tab>'] = { name = '+tabs' },
      --   ['<leader>c'] = { name = '+code' },
      --   ['<leader>t'] = { name = '+terminal' },
      --   ['<leader>f'] = { name = '+file/find' },
      --   ['<leader>q'] = { name = '+quit/session' },
      --   ['<leader>g'] = { name = '+go to' },
      --   ['<leader>s'] = { name = '+search' },
      --   ['<leader>u'] = { name = '+ui' },
      --   ['<leader>x'] = { name = '+diagnostics/quickfix' },
      --   ['<leader>l'] = { name = '+learn' },
      --   ['<leader>sn'] = { name = '+noice' },
      --   ['<leader>p'] = { name = '+preview' },
      -- }
      wk.add {
        { '<leader>f', group = 'file' }, -- group
        { '<leader>ff', '<cmd>Telescope find_files<cr>', desc = 'Find File', mode = 'n' },
        {
          '<leader>fb',
          function()
            print 'hello'
          end,
          desc = 'Foobar',
        },
        { '<leader>fn', desc = 'New File' },
        { '<leader>f1', hidden = true }, -- hide this keymap
        { '<leader>w', proxy = '<c-w>', group = 'windows' }, -- proxy to window mappings
        {
          '<leader>b',
          group = 'buffers',
          expand = function()
            return require('which-key.extras').expand.buf()
          end,
        },
        {
          -- Nested mappings are allowed and can be added in any order
          -- Most attributes can be inherited or overridden on any level
          -- There's no limit to the depth of nesting
          mode = { 'n', 'v' }, -- NORMAL and VISUAL mode
          { '<leader>q', '<cmd>q<cr>', desc = 'Quit' }, -- no need to specify mode since it's inherited
          { '<leader>w', '<cmd>w<cr>', desc = 'Write' },
        },
      }
    end,
    -- opts = {
    --   triggers_blacklist = {
    --     -- list of mode / prefixes that should never be hooked by WhichKey
    --     -- this is mostly relevant for key maps that start with a native binding
    --     -- most people should not need to change this
    --     i = { 'f', 'j', 'k' },
    --     v = { 'f', 'j', 'k' },
    --   },
    -- },
  },
}
