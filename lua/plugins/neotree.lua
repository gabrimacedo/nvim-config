return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    {"echasnovski/mini.icons", opts = {}},
    "MunifTanjim/nui.nvim",
   -- "nvim-tree/nvim-web-devicons",
    -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  lazy = false, -- neo-tree will lazily load itself
  ---@module "neo-tree"
  ---@type neotree.Config?
  opts = {
   	vim.keymap.set('n', '<leader>e', ":Neotree filesystem toggle float<CR>", {}),
    default_component_configs = {
      icon = {
        provider = function(icon, node)
          local text, hl
          local mini_icons = require "mini.icons"
          if node.type == "file" then
            text, hl = mini_icons.get("file", node.name)
          elseif node.type == "directory" then
            text, hl = mini_icons.get("directory", node.name)
            if node:is_expanded() then text = nil end
          end

          if text then icon.text = text end
          if hl then icon.highlight = hl end
        end,
      },
      kind_icon = {
        provider = function(icon, node)
          local mini_icons = require("mini.icons")
          icon.text, icon.highlight = mini_icons.get("lsp", node.extra.kind.name)
        end,
      },
    }, 
  },
}
