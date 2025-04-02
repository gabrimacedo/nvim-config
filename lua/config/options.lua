-- visual
vim.opt.termguicolors = true -- Enable 24-bit colors
vim.g.have_nerd_font = true
vim.opt.cmdheight = 1
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"
vim.opt.showmode = false -- Don't show mode, since it's already in the status line
vim.opt.wrap = false
vim.o.linebreak = true -- companion to wrap don't split words
vim.opt.autoindent = true
vim.opt.showbreak = "↪ " -- Disable line continuation symbol on wrapped lines
vim.opt.scrolloff = 5
vim.o.sidescrolloff = 8 -- minimal number of screen columns either side of cursor if wrap is `false`

-- searching
-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- behavior
vim.opt.undofile = true -- Save undo history
vim.o.updatetime = 250 -- Decrease update time
vim.o.timeoutlen = 300 -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.mouse = "a"
-- unified clipboard
vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)

-- Tab settings
vim.opt.tabstop = 2 -- Number of spaces a tab counts for
vim.opt.shiftwidth = 2 -- Number of spaces for auto-indent
vim.opt.expandtab = true -- Convert tabs to spaces
vim.opt.softtabstop = 2 -- Number of spaces when hitting <Tab>
vim.opt.smarttab = true
vim.opt.smartindent = true

-- Search settings
vim.opt.ignorecase = true -- Ignore case when searching
vim.opt.smartcase = true -- Case-sensitive if uppercase is used

-- Splitting behavior
vim.opt.splitright = true -- New vertical split to the right
vim.opt.splitbelow = true -- New horizontal split below

-- Set leader key (before plugins are loaded)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- custom highlights
vim.api.nvim_set_hl(0, "@property.class.css", { fg = "#ffffff" })
vim.api.nvim_set_hl(0, "@string.css", { fg = "#fc5d7c" })

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
vim.opt.confirm = true
