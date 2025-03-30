local opts = { noremap = true, silent = true }

local function with_desc(desc)
	return vim.tbl_extend("force", opts, { desc = desc })
end

-- toggle line wrapping
vim.keymap.set("n", "<leader>lw", "<cmd>set wrap!<CR>", opts)

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>dq", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
vim.keymap.set("n", "<leader>dd", function()
	vim.diagnostic.open_float()
end, { desc = "Open diagnostics in float" })

-- code formatting
vim.keymap.set("n", "<leader>cf", function()
	require("conform").format()
end, { desc = "[F]ormat current buffer" })

-- buffer navigation
vim.keymap.set("n", "<TAB>", "<cmd>bnext<CR>", with_desc("Next Buffer"))
vim.keymap.set("n", "<S-TAB>", "<cmd>bprev<CR>", with_desc("Previous Buffer"))
vim.keymap.set("n", "<leader>q", "<cmd>bd<CR>", with_desc("Close Buffer"))

-- windows navigation keybinds are being set in nvim-tmux-navigator plugin!

-- Close Windows
vim.keymap.set("n", "<C-q>", "<C-w>q", { desc = "Close Window" })
vim.keymap.set("n", "<leader>o", "<C-w>o", { desc = "Close Other Windows" })

-- Split Windows
vim.keymap.set("n", "<leader>s", "<C-w>s", { desc = "Split Horizontally" })
vim.keymap.set("n", "<leader>v", "<C-w>v", { desc = "Split Vertically" })

-- Resize Windows
vim.keymap.set("n", "<leader>-", ":resize -2<CR>", opts)
vim.keymap.set("n", "<leader>=", ":resize +2<CR>", opts)
vim.keymap.set("n", "<leader>,", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<leader>.", ":vertical resize +2<CR>", opts)
