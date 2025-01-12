local config = {}

local defaut_opts = {
	transparent = false,
	italic_comments = false,
	terminal_colors = true,
	colors_overrides = {},
}

config.options = {}

---@param user_options? table
config.setup = function(user_options)
	local global_settings = vim.tbl_extend("force", defaut_opts, {
		transparent = vim.g.tsukiyo_transparent == true or vim.g.tsukiyo_transparent == 1,
		italic_comments = vim.g.tsukiyo_italic_comment == true or vim.g.tsukiyo_italic_comment == 1,
	})

	config.options = vim.tbl_extend("force", global_settings, user_options or {})

	if config.options.transparent then
		config.options.colors_overrides.bg = "NONE"
	end
end

config.setup()

return config
