local hsluv = require("tsukiyo.hsluv")

local Util = {}

Util.bg = "#000000"
Util.fg = "#FFFFFF"

local function normalize_hex(hex_color)
	if type(hex_color) ~= "string" then
		return nil
	end

	hex_color = hex_color:lower()

	-- Delete '#" prefix if exists
	if hex_color:sub(1, 1) == "#" then
		hex_color = hex_color:sub(2)
	end

	-- Check if hex color has format #ABC and convert in to #AABBCC
	if #hex_color == 3 then
		local r = hex_color:sub(1, 1)
		local g = hex_color:sub(2, 2)
		local b = hex_color:sub(3, 3)
		hex_color = r .. r .. g .. g .. b .. b
	end

	if #hex_color ~= 6 or not hex_color:find("^[0-9a-f]+$") then
		return nil
	end

	return "#" .. hex_color
end

local function hex_to_rgb(hex_color)
	local normalized = normalize_hex(hex_color)

	if not normalized then
		return nil
	end

	local rHex = normalized:sub(2, 3)
	local gHex = normalized:sub(4, 5)
	local bHex = normalized:sub(6, 7)

	return {
		tonumber(rHex, 16),
		tonumber(gHex, 16),
		tonumber(bHex, 16),
	}
end

local function rgb_to_hex(r, g, b)
	local function clamp(c)
		if c < 0 then
			return 0
		elseif c > 255 then
			return 255
		else
			return math.floor(c + 0.5)
		end
	end
	return string.format("#%02X%02X%02X", clamp(r), clamp(g), clamp(b))
end

function Util.blend(fg, bg, alpha)
	local fgRgb = hex_to_rgb(fg)
	local bgRgb = hex_to_rgb(bg)
	if not fgRgb or not bgRgb then
		error("[BLEND]: fg or bg colors are invalid")
	end

	if type(alpha) ~= "number" or alpha < 0 or alpha > 1 then
		error("[BLEND]: 'alpha' must be a number between 0 and 1")
	end

	local r = alpha * fgRgb[1] + (1 - alpha) * bgRgb[1]
	local g = alpha * fgRgb[2] + (1 - alpha) * bgRgb[2]
	local b = alpha * fgRgb[3] + (1 - alpha) * bgRgb[3]

	return rgb_to_hex(r, g, b)
end

function Util.darken(hex_color, amount, bg)
	if not bg then
		bg = Util.bg
	end

	if type(amount) ~= "number" then
		error("[DARKEN]: 'amount must be a number between 0 and 1'")
	end

	return Util.blend(hex_color, bg, math.abs(amount))
end

function Util.lighten(hex_color, amount, fg)
	if not fg then
		fg = Util.fg
	end
	if type(amount) ~= "number" then
		error("[LIGHTEN]: 'amount must be a number between 0 and 1'")
	end

	return Util.blend(hex_color, fg, math.abs(amount))
end

function Util.brighten(color, amount)
	local hsl_colors = hsluv.hex_to_hpluv(color)
	local larpSpace = 100 - hsl_colors[3]
	if amount < 0 then
		larpSpace = hsl_colors[3]
	end

	hsl_colors[3] = hsl_colors[3] + larpSpace * amount
	return hsluv.hsluv_to_hex(hsl_colors)
end

function Util.color_to_rgb(hex_color)
	local rgb = hex_to_rgb(hex_color)
	if not rgb then
		return nil
	end
	return rgb[1], rgb[2], rgb[3]
end

function Util.color_from_rgb(r, g, b)
	return rgb_to_hex(r, g, b)
end

return Util
