local M = {}

function M.setup(palette)
	local colors = palette
	local hl = vim.api.nvim_set_hl

	hl(0, "Normal", { fg = colors.fg, bg = colors.bg })
	hl(0, "Comment", { fg = colors.gray, italic = true })
	hl(0, "String", { fg = colors.green })
	hl(0, "Function", { fg = colors.blue })
	hl(0, "Keyword", { fg = colors.red })
	hl(0, "Identifier", { fg = colors.orange })
	hl(0, "Type", { fg = colors.yellow })
end

return M
