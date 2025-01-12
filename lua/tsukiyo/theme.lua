local hl = vim.api.nvim_set_hl
local util = require("tsukiyo.util")
local theme = {}

local function set_telescope_hl(colors)
	hl(0, "TelescopeBorder", { fg = util.lighten(colors.red, 0.75) })
	hl(0, "TelescopeResultsBorder", { fg = util.lighten(colors.red, 0.75) })
	hl(0, "TelescopePreviewBorder", { fg = util.lighten(colors.red, 0.75) })
	hl(0, "TelescopeSelectionCaret", { fg = colors.red })
	hl(0, "TelescopeSelection", { fg = colors.yellow, bg = colors.bg })
	hl(0, "TelescopeMatching", { link = "Search" })
end

local function set_treesiter_hl(colors, options)
	-- Coments
	hl(0, "@comment", { fg = util.darken(colors.fg, 0.5), bg = colors.none, italic = options.italic_comments })
	hl(
		0,
		"@comment.documentation",
		{ fg = util.darken(colors.fg, 0.5), bg = colors.none, italic = options.italic_comments }
	)
	hl(0, "@comment.error", { fg = colors.red, bg = colors.none, italic = options.italic_comments })
	hl(0, "@comment.warning", { fg = colors.yellow, bg = colors.none, italic = options.italic_comments })
	hl(0, "@comment.todo", { fg = colors.cyan, bg = colors.none, italic = options.italic_comments })
	hl(0, "@comment.note", { fg = colors.magenta, bg = colors.none, italic = options.italic_comments })

	-- Keyword
	hl(0, "@keyword", { fg = util.lighten(colors.red, 0.75), bg = colors.none })
	hl(0, "@keyword.modifier", { fg = util.lighten(colors.orange, 0.6), bg = colors.none })
	hl(0, "@keyword.conditional", { fg = util.lighten(colors.red, 0.75), bg = colors.none }) -- if, else
	hl(0, "@keyword.conditional.ternary", { fg = util.lighten(colors.red, 0.6), bg = colors.none }) -- ? :
	hl(0, "@keyword.repeat", { fg = util.lighten(colors.red, 0.75), bg = colors.none }) -- loops
	hl(0, "@keyword.return", { fg = colors.yellow, bg = colors.none })
	hl(0, "@keyword.exception", { fg = util.lighten(colors.orange, 0.6), bg = colors.none }) -- throw, catch
	hl(0, "@keyword.import", { fg = colors.yellow, bg = colors.none })
	hl(0, "@keyword.coroutine", { fg = colors.yellow, bg = colors.none })
	hl(0, "@keyword.function", { fg = colors.yellow, bg = colors.none })

	-- Constants
	hl(0, "@constant", { fg = util.lighten(colors.orange, 0.9), bg = colors.none })
	hl(0, "@constant.builtin", { fg = util.lighten(colors.orange, 0.9), bg = colors.none })
	hl(0, "@constant.macro", { fg = util.lighten(colors.orange, 0.9), bg = colors.none })

	-- Variable
	hl(0, "@variable", { fg = util.brighten(util.blend(colors.gray, colors.fg, 0.35), 0.35), bg = colors.none })
	hl(0, "@variable.builtin", { fg = util.lighten(colors.orange, 0.9), bg = colors.none })
	hl(0, "@variable.parameter", { fg = colors.yellow, bg = colors.none })
	hl(0, "@variable.parameter.reference", { fg = util.lighten(colors.orange, 0.6), bg = colors.none })
	hl(0, "@variable.member", { fg = util.lighten(colors.orange, 0.6), bg = colors.none })

	-- String
	hl(0, "@string", { fg = util.brighten(colors.green, 0.75), bg = colors.none })
	hl(0, "@string.documentation", { fg = colors.white, bg = colors.none })
	hl(0, "@string.regexp", { fg = colors.white, bg = colors.none })
	hl(0, "@string.escape", { fg = colors.white, bg = colors.none })
	hl(0, "@string.special", { fg = colors.white, bg = colors.none })
	hl(0, "@string.special.symbol", { fg = colors.white, bg = colors.none })
	hl(0, "@string.special.path", { fg = colors.white, bg = colors.none })
	hl(0, "@string.special.url", { fg = colors.blue, bg = colors.none })

	-- Types
	hl(0, "@number", { fg = util.lighten(colors.blue_darken, 0.6), bg = colors.none })
	hl(0, "@number.float", { fg = util.lighten(colors.blue_darken, 0.6), bg = colors.none })
	hl(0, "@boolean", { fg = util.lighten(colors.blue_darken, 0.6), bg = colors.none })
	hl(0, "@type", { fg = util.lighten(colors.blue_darken, 0.6), bg = colors.none })
	hl(0, "@type.builtin", { fg = util.lighten(colors.blue_darken, 0.6), bg = colors.none })
	hl(0, "@type.definition", { fg = util.lighten(colors.blue_darken, 0.6), bg = colors.none })

	-- Punctuations
	hl(0, "@punctuation.bracket", { fg = colors.yellow_darken, bg = colors.none })
	hl(0, "@punctuation.special", { fg = colors.yellow_darken, bg = colors.none })
	hl(0, "@punctuation.delimiter", { fg = colors.yellow_darken, bg = colors.none })

	hl(0, "@constructor", { fg = colors.pink, bg = colors.none })

	-- Function
	hl(0, "@function", { fg = colors.fg, bg = colors.none })
	hl(0, "@function.builtin", { fg = util.lighten(colors.red, 0.75), bg = colors.none })
	hl(0, "@function.call", { fg = util.lighten(colors.red, 0.75), bg = colors.none })
	hl(0, "@function.macro", { fg = util.lighten(colors.red, 0.75), bg = colors.none })
	hl(0, "@function.method", { fg = colors.yellow, bg = colors.none })
	hl(0, "@function.method.call", { fg = colors.yellow, bg = colors.none })

	-- Atribute
	hl(0, "@atribute", { fg = util.lighten(colors.blue_darken, 0.6), bg = colors.none })
	hl(0, "@atribute.builtin", { fg = util.lighten(colors.blue_darken, 0.6), bg = colors.none })
	hl(0, "@property", { fg = util.lighten(colors.blue_darken, 0.6), bg = colors.none })

	-- Tags
	hl(0, "@tag", { fg = util.lighten(colors.pink, 0.6), bg = colors.none })
	hl(0, "@tag.builtin", { fg = colors.red, bg = colors.none })
	hl(0, "@tag.atribute", { fg = colors.red, bg = colors.none })
	hl(0, "@tag.delimiter", { fg = util.lighten(colors.pink, 0.6), bg = colors.none })

	-- Markup
	hl(0, "@markup.strong", { fg = util.lighten(colors.pink, 0.6), bg = colors.none })
	hl(0, "@markup.italic", { fg = util.lighten(colors.red, 0.6), bg = colors.none })
	hl(0, "@markup.strikethrough", { fg = util.lighten(colors.pink, 0.6), bg = colors.none })
	hl(0, "@markup.underline", { fg = util.lighten(colors.pink, 0.6), bg = colors.none })
	hl(0, "@markup.heading.1", { fg = util.lighten(colors.blue, 0.6), bg = colors.none })
	hl(0, "@markup.heading.2", { fg = util.lighten(colors.blue, 0.6), bg = colors.none })
	hl(0, "@markup.heading.3", { fg = util.lighten(colors.blue, 0.6), bg = colors.none })
	hl(0, "@markup.quote", { fg = colors.pink_fuchsia, bg = colors.none })
	hl(0, "@markup.link", { fg = colors.yellow, bg = colors.none })
	hl(0, "@markup.link.label", { fg = colors.yellow_darken, bg = colors.none })
	hl(0, "@markup.link.url", { fg = colors.yellow_darken, bg = colors.none })
	hl(0, "@markup.list", { fg = colors.yellow_darken, bg = colors.none })
end

local function set_html_hl(colors)
	hl(0, "htmlTag", { fg = colors.red, bg = colors.none })
end

local function set_json_hl(colors)
	hl(0, "jsonKeyword", { fg = colors.red, bg = colors.none })
	hl(0, "jsonEscape", { fg = colors.pink, bg = colors.none })
	hl(0, "jsonNull", { fg = colors.yellow, bg = colors.none })
	hl(0, "jsonBoolean", { fg = colors.orange, bg = colors.none })
end

local function set_nvimtree_hl(colors, options)
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
	hl(0, "Comment", { fg = util.darken(colors.fg, 0.5), bg = colors.none, italic = options.italic_comments })
	hl(0, "StatusLineNC", { fg = colors.fg, bg = options.transparent and colors.bg or colors.bg })
end

local function set_ui_hl(colors, options)
	-- TODO: implement remaining options

	hl(0, "Cursor", { fg = colors.white, bg = colors.bg })
	hl(0, "CursorLine", { fg = colors.pink, bg = colors.bg })
	hl(0, "ColorColumn", { fg = colors.none, bg = colors.bg })

	hl(0, "Normal", { fg = colors.fg, bg = colors.bg })
	hl(0, "Comment", { fg = colors.gray, italic = options.italic_comments })
	hl(0, "String", { fg = colors.green })
	hl(0, "Function", { fg = colors.blue })
	hl(0, "Keyword", { fg = colors.red })
	hl(0, "Identifier", { fg = colors.orange })
	hl(0, "Type", { fg = colors.yellow })

	hl(0, "Directory", { fg = colors.red, bg = colors.bg })
end

---@params options? table
theme.set_highlights = function(options)
	local colors = require("tsukiyo.pallete").get_colors()

	-- Initialize highlights
	set_telescope_hl(colors)
	set_treesiter_hl(colors, options)
	set_html_hl(colors)
	set_nvimtree_hl(colors, options)
	set_json_hl(colors)
	set_ui_hl(colors, options)
end

return theme
