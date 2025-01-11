local M = {}
local Util = require("tsukiyo.util")
local hl = vim.api.nvim_set_hl

local function Treesiter(colors)
	-- Coments
	hl(0, "@comment", { fg = Util.darken(colors.fg, 0.5), bg = colors.none })
	hl(0, "@comment.documentation", { fg = Util.darken(colors.fg, 0.5), bg = colors.none })
	hl(0, "@comment.error", { fg = colors.red, bg = colors.none })
	hl(0, "@comment.warning", { fg = colors.yellow, bg = colors.none })
	hl(0, "@comment.todo", { fg = colors.cyan, bg = colors.none })
	hl(0, "@comment.note", { fg = colors.magenta, bg = colors.none })

	-- Keyword
	hl(0, "@keyword", { fg = Util.lighten(colors.red, 0.75), bg = colors.none })
	hl(0, "@keyword.modifier", { fg = Util.lighten(colors.orange, 0.6), bg = colors.none })
	hl(0, "@keyword.conditional", { fg = Util.lighten(colors.red, 0.75), bg = colors.none }) -- if, else
	hl(0, "@keyword.conditional.ternary", { fg = Util.lighten(colors.red, 0.6), bg = colors.none }) -- ? :
	hl(0, "@keyword.repeat", { fg = Util.lighten(colors.red, 0.75), bg = colors.none }) -- loops
	hl(0, "@keyword.return", { fg = colors.yellow, bg = colors.none })
	hl(0, "@keyword.exception", { fg = Util.lighten(colors.orange, 0.6), bg = colors.none }) -- throw, catch
	hl(0, "@keyword.import", { fg = colors.yellow, bg = colors.none })
	hl(0, "@keyword.coroutine", { fg = colors.yellow, bg = colors.none })
	hl(0, "@keyword.function", { fg = colors.yellow, bg = colors.none })

	-- Constants
	hl(0, "@constant", { fg = Util.lighten(colors.orange, 0.9), bg = colors.none })
	hl(0, "@constant.builtin", { fg = Util.lighten(colors.orange, 0.9), bg = colors.none })
	hl(0, "@constant.macro", { fg = Util.lighten(colors.orange, 0.9), bg = colors.none })

	-- Variable
	hl(0, "@variable", { fg = Util.brighten(Util.blend(colors.gray, colors.fg, 0.35), 0.35), bg = colors.none })
	hl(0, "@variable.builtin", { fg = Util.lighten(colors.orange, 0.9), bg = colors.none })
	hl(0, "@variable.parameter", { fg = colors.yellow, bg = colors.none })
	hl(0, "@variable.parameter.reference", { fg = Util.lighten(colors.orange, 0.6), bg = colors.none })
	hl(0, "@variable.member", { fg = Util.lighten(colors.orange, 0.6), bg = colors.none })

	-- String
	hl(0, "@string", { fg = Util.brighten(colors.green, 0.75), bg = colors.none })
	hl(0, "@string.documentation", { fg = colors.white, bg = colors.none })
	hl(0, "@string.regexp", { fg = colors.white, bg = colors.none })
	hl(0, "@string.escape", { fg = colors.white, bg = colors.none })
	hl(0, "@string.special", { fg = colors.white, bg = colors.none })
	hl(0, "@string.special.symbol", { fg = colors.white, bg = colors.none })
	hl(0, "@string.special.path", { fg = colors.white, bg = colors.none })
	hl(0, "@string.special.url", { fg = colors.blue, bg = colors.none })

	-- Types
	hl(0, "@number", { fg = Util.lighten(colors.blue_darken, 0.6), bg = colors.none, italic = true })
	hl(0, "@number.float", { fg = Util.lighten(colors.blue_darken, 0.6), bg = colors.none, italic = true })
	hl(0, "@boolean", { fg = Util.lighten(colors.blue_darken, 0.6), bg = colors.none, italic = true })
	hl(0, "@type", { fg = Util.lighten(colors.blue_darken, 0.6), bg = colors.none, italic = true })
	hl(0, "@type.builtin", { fg = Util.lighten(colors.blue_darken, 0.6), bg = colors.none, italic = true })
	hl(0, "@type.definition", { fg = Util.lighten(colors.blue_darken, 0.6), bg = colors.none, italic = true })

	-- Punctuations
	hl(0, "@punctuation.bracket", { fg = colors.yellow_darken, bg = colors.none })
	hl(0, "@punctuation.special", { fg = colors.yellow_darken, bg = colors.none })
	hl(0, "@punctuation.delimiter", { fg = colors.yellow_darken, bg = colors.none })

	hl(0, "@constructor", { fg = colors.pink, bg = colors.none })

	-- Function
	hl(0, "@function", { fg = colors.fg, bg = colors.none })
	hl(0, "@function.builtin", { fg = Util.lighten(colors.red, 0.75), bg = colors.none })
	hl(0, "@function.call", { fg = Util.lighten(colors.red, 0.75), bg = colors.none })
	hl(0, "@function.macro", { fg = Util.lighten(colors.red, 0.75), bg = colors.none })
	hl(0, "@function.method", { fg = colors.yellow, bg = colors.none })
	hl(0, "@function.method.call", { fg = colors.yellow, bg = colors.none })

	-- Atribute
	hl(0, "@atribute", { fg = Util.lighten(colors.blue_darken, 0.6), bg = colors.none })
	hl(0, "@atribute.builtin", { fg = Util.lighten(colors.blue_darken, 0.6), bg = colors.none })
	hl(0, "@property", { fg = Util.lighten(colors.blue_darken, 0.6), bg = colors.none })

	-- Tags
	hl(0, "@tag", { fg = Util.lighten(colors.pink, 0.6), bg = colors.none })
	hl(0, "@tag.builtin", { fg = colors.red, bg = colors.none })
	hl(0, "@tag.atribute", { fg = colors.red, bg = colors.none })
	hl(0, "@tag.delimiter", { fg = Util.lighten(colors.pink, 0.6), bg = colors.none })

	-- Markup
	hl(0, "@markup.strong", { fg = Util.lighten(colors.pink, 0.6), bg = colors.none })
	hl(0, "@markup.italic", { fg = Util.lighten(colors.red, 0.6), bg = colors.none })
	hl(0, "@markup.strikethrough", { fg = Util.lighten(colors.pink, 0.6), bg = colors.none })
	hl(0, "@markup.underline", { fg = Util.lighten(colors.pink, 0.6), bg = colors.none })
	hl(0, "@markup.heading.1", { fg = Util.lighten(colors.blue, 0.6), bg = colors.none })
	hl(0, "@markup.heading.2", { fg = Util.lighten(colors.blue, 0.6), bg = colors.none })
	hl(0, "@markup.heading.3", { fg = Util.lighten(colors.blue, 0.6), bg = colors.none })
	hl(0, "@markup.quote", { fg = colors.pink_fuchsia, bg = colors.none })
	hl(0, "@markup.link", { fg = colors.yellow, bg = colors.none })
	hl(0, "@markup.link.label", { fg = colors.yellow_darken, bg = colors.none })
	hl(0, "@markup.link.url", { fg = colors.yellow_darken, bg = colors.none })
	hl(0, "@markup.list", { fg = colors.yellow_darken, bg = colors.none })
end

local function TerminalColors(colors)
	vim.g.terminal_color_0 = colors.bg
	vim.g.terminal_color_1 = colors.red
	vim.g.terminal_color_2 = Util.darken(colors.green, 0.3)
	vim.g.terminal_color_3 = colors.yellow
	vim.g.terminal_color_4 = colors.blue
	vim.g.terminal_color_5 = colors.magenta
	vim.g.terminal_color_6 = colors.cyan
	vim.g.terminal_color_7 = colors.white
	vim.g.terminal_color_8 = Util.darken(colors.gray, 0.5)
	vim.g.terminal_color_9 = Util.lighten(Util.blend(colors.red, colors.magenta, 0.2), 0.5)
	vim.g.terminal_color_10 = Util.lighten(colors.green, 0.7)
	vim.g.terminal_color_11 = Util.lighten(colors.yellow, 0.2)
	vim.g.terminal_color_12 = Util.lighten(colors.blue, 0.5)
	vim.g.terminal_color_13 = Util.lighten(colors.magenta, 0.5)
	vim.g.terminal_color_14 = Util.lighten(colors.cyan, 0.5)
	vim.g.terminal_color_15 = Util.lighten(colors.white, 0.5)
end

local function Telescope(colors)
	hl(0, "TelescopeBorder", { fg = Util.lighten(colors.red, 0.75) })
	hl(0, "TelescopeResultsBorder", { fg = Util.lighten(colors.red, 0.75) })
	hl(0, "TelescopePreviewBorder", { fg = Util.lighten(colors.red, 0.75) })
	hl(0, "TelescopeSelectionCaret", { fg = colors.red })
	hl(0, "TelescopeSelection", { fg = colors.yellow, bg = colors.bg })
	hl(0, "TelescopeMatching", { link = "Search" })
end

local function Html(colors)
	hl(0, "htmlTag", { fg = colors.red, bg = colors.none })
end

local function Json(colors)
	hl(0, "jsonKeyword", { fg = colors.red, bg = colors.none })
	hl(0, "jsonEscape", { fg = colors.pink, bg = colors.none })
	hl(0, "jsonNull", { fg = colors.yellow, bg = colors.none })
	hl(0, "jsonBoolean", { fg = colors.orange, bg = colors.none })
end

local function NvimTree(colors)
	hl(0, "NvimTreeRootFolder", { fg = colors.red, bg = colors.none, bold = true })
	hl(0, "NvimTreeGitDirty", { fg = colors.red, bg = colors.none })
	hl(0, "NvimTreeGitNew", { fg = colors.red, bg = colors.none })
	hl(0, "NvimTreeImageFile", { fg = colors.red, bg = colors.none })
	hl(0, "NvimTreeEmptyFolderName", { fg = colors.red, bg = colors.none })
	hl(0, "NvimTreeSpecialFile", { fg = colors.red, bg = colors.none, underline = true })
	hl(0, "NvimTreeNormal", { fg = colors.red, bg = colors.none })
	hl(0, "NvimTreeCursorLine", { fg = colors.red, bg = colors.none })
	hl(0, "NvimTreeVertSplit", { fg = colors.red, bg = colors.none })
	hl(0, "NvimTreeEndOfBuffer", { fg = colors.red, bg = colors.none })
end

function M.setup(palette)
	local colors = palette.colors

	-- TODO: implement remaining options
	hl(0, "Cursor", { fg = colors.white, bg = colors.bg })
	hl(0, "CursorLine", { fg = colors.pink, bg = colors.bg })
	hl(0, "ColorColumn", { fg = colors.none, bg = colors.bg })

	hl(0, "Normal", { fg = colors.fg, bg = colors.bg })
	hl(0, "Comment", { fg = colors.gray, italic = true })
	hl(0, "String", { fg = colors.green })
	hl(0, "Function", { fg = colors.blue })
	hl(0, "Keyword", { fg = colors.red })
	hl(0, "Identifier", { fg = colors.orange })
	hl(0, "Type", { fg = colors.yellow })

	hl(0, "Directory", { fg = colors.red, bg = colors.bg })

	Treesiter(colors)
	TerminalColors(colors)
	Telescope(colors)
	Html(colors)
	NvimTree(colors)
	Json(colors)
end

return M
