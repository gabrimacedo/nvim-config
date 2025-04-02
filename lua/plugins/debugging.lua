return {
	"mfussenegger/nvim-dap",
	dependencies = {
		{ "rcarriga/nvim-dap-ui", dependencies = { "nvim-neotest/nvim-nio" } },
		-- "theHamsta/nvim-dap-virtual-text",
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")
		-- local dap_virtual_text = require("nvim-dap-virtual-text")

		dapui.setup()
		-- dap_virtual_text.setup()

		dap.adapters["pwa-node"] = {
			type = "server",
			host = "localhost",
			port = "${port}",
			executable = {
				command = "node",
				args = {
					vim.fn.stdpath("data") .. "/js-debug/src/dapDebugServer.js",
					"${port}",
				},
			},
		}

		local js_based_languages = { "typescript", "javascript", "typescriptreact" }

		for _, language in ipairs(js_based_languages) do
			dap.configurations[language] = {
				{
					type = "pwa-node",
					request = "launch",
					name = "Launch file",
					program = "${file}",
					cwd = "${workspaceFolder}",
          console = "externalTerminal"
				},
				{
					type = "pwa-node",
					request = "attach",
					name = "Attach",
					processId = require("dap.utils").pick_process,
					cwd = "${workspaceFolder}",
				},
				{
					type = "pwa-chrome",
					request = "launch",
					name = 'Start Chrome with "localhost"',
					url = "http://localhost:3000",
					webRoot = "${workspaceFolder}",
					userDataDir = "${workspaceFolder}/.vscode/vscode-chrome-debug-userdatadir",
				},
			}
		end

		-- dap.configurations.javascript = {
		-- 	{
		-- 		type = "pwa-node",
		-- 		request = "launch",
		-- 		name = "Launch current file",
		-- 		program = "${file}",
		-- 		cwd = vim.fn.getcwd(),
		-- 		runtimeExecutable = "node",
		-- 		console = "integratedTerminal",
		-- 	},
		-- }

		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end

		vim.keymap.set("n", "<Leader>bb", dap.toggle_breakpoint, {})
		vim.keymap.set("n", "<Leader>bc", dap.continue, {})
		vim.keymap.set("n", "<leader>ui", require("dapui").toggle)
	end,
}
