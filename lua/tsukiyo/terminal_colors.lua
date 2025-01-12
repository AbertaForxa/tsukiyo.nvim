local termianl_colors = {}
local util = require("tsukiyo.util")

termianl_colors.set_colors = function(colors)
	vim.g.terminal_color_0 = colors.bg
	vim.g.terminal_color_1 = colors.red
	vim.g.terminal_color_2 = util.darken(colors.green, 0.3)
	vim.g.terminal_color_3 = colors.yellow
	vim.g.terminal_color_4 = colors.blue
	vim.g.terminal_color_5 = colors.magenta
	vim.g.terminal_color_6 = colors.cyan
	vim.g.terminal_color_7 = colors.white
	vim.g.terminal_color_8 = util.darken(colors.gray, 0.5)
	vim.g.terminal_color_9 = util.lighten(util.blend(colors.red, colors.magenta, 0.2), 0.5)
	vim.g.terminal_color_10 = util.lighten(colors.green, 0.7)
	vim.g.terminal_color_11 = util.lighten(colors.yellow, 0.2)
	vim.g.terminal_color_12 = util.lighten(colors.blue, 0.5)
	vim.g.terminal_color_13 = util.lighten(colors.magenta, 0.5)
	vim.g.terminal_color_14 = util.lighten(colors.cyan, 0.5)
	vim.g.terminal_color_15 = util.lighten(colors.white, 0.5)
end

return termianl_colors
