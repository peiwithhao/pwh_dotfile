local opt = vim.opt
local indent = 2

-- Hint: use `:h <option>` to figure out the meaning if needed
opt.clipboard = 'unnamedplus' -- use system clipboard
opt.completeopt = { 'menu', 'menuone', 'noselect' }
opt.mouse = 'a' -- allow the mouse to be used in Nvim

-- Tab
opt.tabstop = 4 -- number of visual spaces per TAB
opt.shiftwidth = 4 -- insert 4 spaces on a tab
opt.expandtab = true -- tabs are spaces, mainly because of python
opt.autoindent = true

-- 防止包裹
opt.wrap = false

-- UI config opt.number = true -- show absolute number
opt.relativenumber = true -- add numbers to each line on the left side
opt.cursorline = true -- highlight cursor line underneath the cursor horizontally
opt.splitbelow = true -- open new vertical split bottom
opt.splitright = true -- open new horizontal splits right
opt.termguicolors = true -- enabl 24-bit RGB color in the TUI
opt.showmode = false -- we are experienced, wo don't need the "-- INSERT --" mode hint
opt.signcolumn = 'yes'

-- Searching
opt.incsearch = true -- search as characters are entered
opt.hlsearch = false -- do not highlight matches
opt.ignorecase = true -- ignore case in searches by default
opt.smartcase = true -- but make it case sensitive if an uppercase is entered

opt.cursorline = true
opt.jumpoptions = 'stack'

-- disable plugin --
-- vim.g.lazyvim_blink_main = true
vim.g.lazyvim_blink_main = false
