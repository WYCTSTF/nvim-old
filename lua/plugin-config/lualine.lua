require('lualine').setup({
	sections = {
		lualine_c = { { 'filename', path = 1} },
    lualine_x = {
      "encoding",
      {
        "fileformat",
        symbols = {
          unix = ' ',
        },
      },
      "filetype",
    },
    -- transparent = true,
	},
})
