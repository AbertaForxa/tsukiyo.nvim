local colors = require("tsukiyo.pallete").colors

return {
	normal = {
		a = { fg = colors.red, bg = colors.bg, gui = "bold" },
		b = { fg = colors.red, bg = colors.bg },
		c = { fg = colors.red, bg = colors.bg },
	},
	command = {
		a = { fg = colors.purple, bg = colors.bg, gui = "bold" },
		b = { fg = colors.purple, bg = colors.bg },
	},
	insert = {
		a = { fg = colors.pink_fuchsia, bg = colors.bg, gui = "bold" },
		b = { fg = colors.pink_fuchsia, bg = colors.bg },
	},
	visual = {
		a = { fg = colors.yellow, bg = colors.bg, gui = "bold" },
		b = { fg = colors.yellow, bg = colors.bg },
	},
	terminal = {
		a = { fg = colors.yellow, bg = colors.bg, gui = "bold" },
		b = { fg = colors.yellow, bg = colors.bg },
	},
	replace = {
		a = { fg = colors.blue, bg = colors.bg, gui = "bold" },
		b = { fg = colors.blue, bg = colors.bg },
	},
	inactive = {
		a = { fg = colors.fg, bg = colors.bg, gui = "bold" },
		b = { fg = colors.fg, bg = colors.bg },
		c = { fg = colors.fg, bg = colors.bg },
	},
}