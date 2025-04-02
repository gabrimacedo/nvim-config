vim.keymap.set({ "n" }, "<leader>ns", "<cmd>Scratch<cr>", { desc = "new scratch buffer" })
vim.keymap.set({ "n" }, "<leader>os", "<cmd>ScratchOpen<cr>", { desc = "open scratch buffer" })

return {
	"LintaoAmons/scratch.nvim",
	event = "VeryLazy",
	dependencies = {
		{ "ibhagwan/fzf-lua" },
	},
	opts = {
		file_picker = "fzflua",
		filetypes = { "lua", "js", "sh", "ts" },
	},
}
