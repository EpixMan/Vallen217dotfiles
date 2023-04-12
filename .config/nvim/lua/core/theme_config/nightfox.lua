-- Default options
require('nightfox').setup({
  options = {
    -- Compiled file's destination location
    compile_path = vim.fn.stdpath("cache") .. "/nightfox",
    compile_file_suffix = "_compiled", -- Compiled file suffix
    transparent = false,     -- Disable setting background
    terminal_colors = true,  -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
    dim_inactive = false,    -- Non focused panes set to alternative background
    module_default = true,   -- Default enable value for modules
    colorblind = {
      enable = false,        -- Enable colorblind support
      simulate_only = false, -- Only show simulated colorblind colors and not diff shifted
      severity = {
        protan = 0,          -- Severity [0,1] for protan (red)
        deutan = 0,          -- Severity [0,1] for deutan (green)
        tritan = 0,          -- Severity [0,1] for tritan (blue)
      },
    },
    styles = {               -- Style to be applied to different syntax groups
      comments = "italic",     -- Value is any valid attr-list value `:help attr-list`
      conditionals = "italic",
      constants = "NONE",
      functions = "NONE",
      keywords = "italic",
      numbers = "NONE",
      operators = "NONE",
      strings = "NONE",
      types = "NONE",
      variables = "NONE",
    },
    inverse = {             -- Inverse highlight for different types
      match_paren = false,
      visual = false,
      search = false,
    },
    modules = {             -- List of various plugins and additional options
      -- ...
    },
  },
  palettes = {
      nightfox = {
          bg0 =     "#14141f",
          bg1 =     "#14141f",
          bg2 =     "#465678",
          bg3 =     "#29293f",
          bg4 =     "#465698",
          fg0 =     "#f4f7ff",
          fg1 =     "#f4f7ff",
          fg2 =     "#f4f7ff",
          fg3 =     "#465678",
          sel0 =    "#13151e",
          sel1 =    "#13151e",
          comment = "#63658b",
          black =   "#222236",
          red =     "#f1547b",
          green =   "#7cdea0",
          yellow =  "#7ff3ef",	-- cyan
          blue =    "#749fee",
          magenta = "#928be2",	-- purple
          cyan =    "#fafca8",	-- yellow
          white =   "#f4f7ff",
          orange =  "#ffb765",
          pink =    "#ff5095"
      }
  },
  specs = {},
  groups = {},
})

-- setup must be called before loading
vim.cmd("colorscheme nightfox")
