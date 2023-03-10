require("lualine").setup {
	option = {
		icons_enabled = true,
		theme = "tokyonight",
	},
	sections = {
		lualine_a = {
			{
			'filename',
			path = 1,
			}
		}
	}
}
