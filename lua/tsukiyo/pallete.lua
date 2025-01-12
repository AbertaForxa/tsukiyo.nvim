local tsukiyo_colors = {}

tsukiyo_colors.get_colors = function()
	local colors = {
		bg = "#0C0C0C", -- RO
		fg = "#FCFAF2", -- SHIRONERI
		red = "#AB3B3A", -- SHINSYU
		green = "#91B493", -- USUAO
		magenta = "#9f5c9f",
		cyan = "#66BAB7", --MIZUASAGI
		orange = "#91B493", -- USUKOH
		gray = "#696969",
		blue = "#005CAF", -- RURI
		blue_darken = "#0F2540", -- KOH
		yellow = "#FAD689", -- UZUKI
		yellow_darken = "#EBB471", -- USUKOH
		pink = "#F596AA", -- MOMO
		pink_fuchsia = "#C1328E", -- BOTAN
		white = "#FFFFFB", -- GOFUN
		none = "NONE",
	}

	local config = require("tsukiyo.config")
	if config.options.colors_overrides then
		colors = vim.tbl_extend("force", colors, config.options.colors_overrides)
	end

	return colors
end

return tsukiyo_colors
