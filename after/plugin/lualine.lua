require("lualine").setup {
	options = {
		icons_enabled = true,
		theme = 'nightfly',
	},

	section = {
		lualine_a = {
			'branch',
			'filename',
			path = 1,
		}
	}
}
