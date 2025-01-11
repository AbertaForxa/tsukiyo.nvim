local C = require("tsukiyo.pallete")

local tsukiyo = {}

tsukiyo.normal = {
	a = { bg = C.pallete.blue, fg = C.pallete.bg, gui = "bold" },
	b = { bg = C.pallete.bg, fg = C.pallete.red },
	c = { bg = C.pallete.bg, fg = C.pallete.red },
}

tsukiyo.insert = {
	a = { bg = C.pallete.green, fg = C.pallete.bg, gui = "bold" },
	b = { bg = C.pallete.gray, fg = C.pallete.white },
}

tsukiyo.command = {
	a = { bg = C.pallete.fg, fg = C.pallete.bg, gui = "bold" },
	b = { bg = C.pallete.gray, fg = C.pallete.white },
}

tsukiyo.visual = {
	a = { bg = C.pallete.red, fg = C.pallete.bg, gui = "bold" },
	b = { bg = C.pallete.gray, fg = C.pallete.white },
}

tsukiyo.replace = {
	a = { bg = C.pallete.red, fg = C.pallete.bg, gui = "bold" },
	b = { bg = C.pallete.gray, fg = C.pallete.white },
}

tsukiyo.inactive = {
	a = { bg = C.pallete.gray, fg = C.pallete.bg, gui = "bold" },
	b = { bg = C.pallete.gray, fg = C.pallete.white },
	c = { bg = C.pallete.bg, fg = C.pallete.white },
}

return tsukiyo
