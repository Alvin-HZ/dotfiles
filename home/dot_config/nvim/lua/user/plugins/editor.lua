local custom = {}

custom["kylechui/nvim-surround"] = {
	lazy = true,
	event = "VeryLazy",
	config = require("configs.editor.nvim-surround"),
}

return custom
