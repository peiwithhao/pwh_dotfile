-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Returning focus to Neovim after inverse search
-- vim.cmd([[
-- function! s:TexFocusVim() abort
--   " Replace `TERMINAL` with the name of your terminal application
--   " Example: execute "!open -a iTerm"
--   " Example: execute "!open -a Alacritty"
--   silent execute "!open -a Alacritty"
--   redraw!
-- endfunction
-- augroup vimtex_event_focus
--   au!
--   au User VimtexEventViewReverse call s:TexFocusVim()
-- augroup END
-- ]])
-- vim.cmd([[
-- function! s:TexFocusVim() abort
--   " Replace `TERMINAL` with the name of your terminal application
--   " Example: execute "!open -a iTerm"
--   " Example: execute "!open -a Alacritty"
--   silent execute "!open -a kitty"
--   redraw!
-- endfunction
-- augroup vimtex_event_focus
--   au!
--   au User VimtexEventViewReverse call s:TexFocusVim()
-- augroup END
-- ]])

local autocmd = vim.api.nvim_create_autocmd

-- Don't auto commenting new lines
autocmd('BufEnter', {
  pattern = '',
  command = 'set fo-=c fo-=r fo-=o',
})
-- close some filetypes with <q>
vim.api.nvim_create_autocmd('FileType', {
  group = vim.api.nvim_create_augroup('close_with_q', { clear = true }),
  pattern = {
    'terminal',
  },
  callback = function(event)
    vim.bo[event.buf].buflisted = false
    vim.keymap.set('n', 'q', '<cmd>close<cr>', { buffer = event.buf, silent = true })
  end,
})

vim.api.nvim_create_autocmd({ 'FileType' }, {
  pattern = { 'c', 'cpp', 'md', 'txt', 'c.snippets', 'cpp.snippets' },
  callback = function()
    vim.b.autoformat = true
    vim.opt_local.expandtab = true
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.softtabstop = 4
  end,
})

local spell_group = vim.api.nvim_create_augroup('spell_group', { clear = true })
-- vim.api.nvim_create_autocmd('FileType', {
--   pattern = { 'lua', 'python', 'go', 'c' },
--   command = 'setlocal spell spelllang=en_us',
--   group = spell_group,
-- })

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'markdown' },
  command = 'setlocal nospell',
  group = spell_group,
})
vim.api.nvim_create_autocmd('TermOpen', {
  pattern = '*', -- disable spellchecking in the embeded terminal
  command = 'setlocal nospell',
  group = spell_group,
})

-- vim.api.nvim_create_autocmd({ "FileType", "InsertLeave" }, {
--   pattern = "tex",
--   callback = require("util.latex").format,
-- })

-- vim.api.nvim_create_autocmd("BufEnter", {
--   pattern = "*",
--   command = "normal! zz",
-- })
