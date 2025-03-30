return {
  "ibhagwan/fzf-lua",
  dependencies = { "echasnovski/mini.icons" },
  opts = {},
  keys = {
    { '<leader>ff', function() require('fzf-lua').files() end, desc = "Find files in project directory"},
    { '<leader>fg', function() require('fzf-lua').live_grep() end, desc = "Live grep in project directory"},
    { '<leader><leader>', function() require('fzf-lua').buffers() end, desc = "Search open buffers"},
    { '<leader>fh', function() require('fzf-lua').helptags() end, desc = "[F]ind in noevim [H]elp"},
    { '<leader>fc', function() require('fzf-lua').files({cwd=vim.fn.stdpath("config")}) end, desc = "Find in nvim configuration"},
    { '<leader>fd', function() require('fzf-lua').diagnostics_document() end, desc = "[F]ind [D]iagnostics"},
    { '<leader>fr', function() require('fzf-lua').resume() end, desc = "[F]ind [R]esume"},
    { '<leader>fo', function() require('fzf-lua').oldfiles() end, desc = "[F]ind [O]ld Files"},
    { '<leader>/', function() require('fzf-lua').lgrep_curbuf() end, desc = "[/] Live grep current buffer"},
    { '<leader>fa', function() require('fzf-lua').builtin() end, desc = "[F]ind [A]ll builtin finders"},
  },
}
