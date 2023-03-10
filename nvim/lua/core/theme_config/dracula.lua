local dracula = require("dracula")
dracula.setup({
  -- customize dracula color palette
  colors = {
    bg = "#050810",
    fg = "#e5f4f8",
    --selection = "#0a121f",
    --comment = "#e5f4f8",
    red = "#f7617f",
    orange = "#ff9b6c", -- orange
    yellow = "#f5eb82",
    green = "#76e79c",
    purple = "#a086f7",
    cyan = "#54d2e1",
    pink = "#d53686",
    bright_red = "#ff6987",
    bright_green = "#88e7ab",
    bright_yellow = "#f5eb82",
    bright_blue = "#73a2ff",
    bright_magenta = "#bb9af7",
    bright_cyan = "#5ee6f0",
    bright_white = "#ffffff",
    menu = "#050810",
    visual = "#3E4452",
    gutter_fg = "#4B5263",
    nontext = "#3B4048",
  },
  -- show the '~' characters after the end of buffers
  show_end_of_buffer = true, -- default false
  -- use transparent background
  transparent_bg = false, -- default false
  -- set custom lualine background color
  lualine_bg_color = "#050810", -- default nil
  -- set italic comment
  italic_comment = true, -- default false
  -- overrides the default highlights see `:h synIDattr`
})

vim.cmd "colorscheme dracula"
