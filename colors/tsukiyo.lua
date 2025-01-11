local palette = require("tsukiyo.pallete")
local highlights = require("tsukiyo.highlights")

local M = {}

function M.setup()
	vim.o.termguicolors = true
	highlights.setup(palette)
	vim.g.colors_name = "tsukiyo"
end

M.setup()

return M
