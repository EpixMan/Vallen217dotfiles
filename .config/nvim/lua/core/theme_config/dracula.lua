local dracula = require("dracula")
dracula.setup({
  -- customize dracula color palette
  colors = {
    bg =		"#14141f",
    fg =		"#e54f48",
    selection =	"#13151e",
    comment =	"#495373",
	menu =		"#14141f",
    visual =	"#ffffff",
    gutter_fg =	"#e5f4f8",
    nontext =	"#e5f4f8",

	red =		"#f9566c",
	green =		"#7cdea3",
	yellow =	"#f3f395",
    orange =	"#ffae4c",
    blue =		"#5fa6ff",
    cyan =		"#5f6de1",
    purple =	"#9c85f7",
	pink =		"#d53686",
    white =		"#e5f4f8",

	bright_red =	"#ff6a7e",
    bright_green =	"#8af5b5",
    bright_yellow = "#ecf3aa",
    bright_blue =	"#82aeff",
    bright_cyan =	"#8be1e1",
	bright_magenta ="#afaaf7", -- purple-alt
    bright_white =	"#f0f0ff",
      },

  -- show the '~' characters after the end of buffers
  show_end_of_buffer = true, -- default false
  -- use transparent background
  transparent_bg = false, -- default false
  -- set custom lualine background color
  lualine_bg_color = "#14141f", -- default nil
  -- set italic comment
  italic_comment = true, -- default false
  -- overrides the default highlights see `:h synIDattr`
})

vim.cmd "colorscheme dracula"
