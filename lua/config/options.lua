-- General settings
vim.opt.number = true               -- Show line numbers
vim.opt.relativenumber = true       -- Relative line numbers
vim.opt.cursorline = true           -- Highlight the current line

vim.opt.linebreak = true            -- Wrap lines at word boundaries
vim.opt.breakindent = true          -- Keep indentation for wrapped lines
vim.opt.showbreak = "↪ "            -- Show visual indicator for wrapped lines

-- visual
vim.opt.termguicolors = true        -- Enable 24-bit colors
vim.g.have_nerd_font = true
vim.opt.mouse = 'a'
-- vim.opt.cmdheight = 0

vim.opt.showmode = false   	    -- Don't show mode, since it's already in the status line

vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Save undo history
vim.opt.undofile = true

-- Tab settings
vim.opt.tabstop = 2                 -- Number of spaces a tab counts for
vim.opt.shiftwidth = 2              -- Number of spaces for auto-indent
vim.opt.expandtab = true            -- Convert tabs to spaces
vim.opt.softtabstop = 2             -- Number of spaces when hitting <Tab>
vim.opt.smarttab = true
vim.opt.smartindent = true

-- Search settings
vim.opt.ignorecase = true           -- Ignore case when searching
vim.opt.smartcase = true            -- Case-sensitive if uppercase is used

-- Splitting behavior
vim.opt.splitright = true           -- New vertical split to the right
vim.opt.splitbelow = true           -- New horizontal split below

-- Set leader key (before plugins are loaded)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- vim.cmd("syntax off")

-- custom highlights
vim.api.nvim_set_hl(0, "@property.class.css", { fg = "#ffffff"})
vim.api.nvim_set_hl(0, "@string.css", { fg = "#fc5d7c"})

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10  

vim.opt.signcolumn = 'yes'

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
vim.opt.confirm = true

-- -- Override vim.ui.select with fzf-lua's selector
-- vim.ui.select = function(items, opts, on_choice)
--   require("fzf-lua").fzf_select(items, opts, on_choice)
-- end
