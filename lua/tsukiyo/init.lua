local config = require("tsukiyo.config")
local colors = require("tsukiyo.pallete").get_colors()
local terminal_colors = require("tsukiyo.terminal_colors")
local theme = require("tsukiyo.theme")
local tsukiyo = {}

tsukiyo.setup = config.setup

tsukiyo.load = function()
	vim.cmd("hi clear")

	if vim.fn.exists("syntax on") then
		vim.cmd("syntax reset")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "tsukiyo"

	if config.options.terminal_colors then
		terminal_colors.set_colors(colors)
	end
	theme.set_highlights(config.options)
end

return tsukiyo
